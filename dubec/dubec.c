/**
 * dubec.c
 *
 * RC battery switch application for DUBEC,
 * a dual channel voltage regulator.
 *
 * Note about code structure: I'm still somewhat undecided
 * whether nested if blocks or surprise return statements
 * are prettier, but I went with the labyrinthine if blocks
 * for now.
 *
 * Created: 10/3/2014 2:16:55 AM
 * Author: janne@turbofunction.com
 */

#include <avr/io.h>
#include <avr/power.h>
#include <avr/sleep.h>
#include <avr/wdt.h>
#include <util/atomic.h>

#define TRUE 1
#define FALSE 0

// red LED
#define PIN_FAULT PORTB0
// RC signal input
#define PIN_SIG PORTB1
// 12V regulator on/off
#define PIN_12V PORTB2
// FET gate net (and green LED)
#define PIN_SWITCH PORTB3
// AUX battery voltage divider net
#define PIN_ADC PORTB4

// Range with 17.8k/2.74k divider: [6..33.6V] -> [0.8..4.482V]
// With 4.7V VCC: 0.8V / 4.7V * 1024 = 174
// We get 178 as ADC value for 6V.
#define MIN_VOLTAGE 174

// evaluates to true if waiting for high RC signal
#define is_trigger_high() (MCUCR & (_BV(ISC01) | _BV(ISC00)))

// evaluates to true if timer is counting
#define is_timer_running() (TCCR0B)

// configure watchdog with the given prescaler
#define watchdog(wdtp) ({ ATOMIC_BLOCK(ATOMIC_RESTORESTATE) { WDTCR = _BV(WDCE); WDTCR = wdtp; } WDTCR |= _BV(WDTIE); })

// Enable ADC and ADC interrupt, conversion will
// start automatically on noise reduction sleep.
#define start_ADC() { ADCSRA |= _BV(ADIE) | _BV(ADSC); }

// returns greater of arguments
#define MAX(a, b) (a > b ? a : b)

// AUX battery is depleted
#define AUX_BAD 1
// AUX is low
#define AUX_WARN 2
// self-explanatory
#define AUX_OK 3

typedef struct {
	// see AUX_*
	uint8_t aux_status;
	/**
	 * Fallback level is set to 75% of measured initial voltage
	 * level, ie. 4.2V results in 3.15V and 3.8V makes 2.85V.
	 * Thus, if you rely on the device to not allow battery to
	 * discharge down to 2.85V, make sure that the initial charge
	 * is a lot more than 3.8V.
	 *
	 * Note: There's a(n incomplete) version in history with
	 * cell count detection, but it didn't feel to be significantly
	 * better. (Better as in avoiding unnecessary fallbacks versus
	 * killing batteries.) And, to keep in mind, I intend to use this
	 * with my own batteries as well.
	 *
	 * Rule: Don't launch with a drained battery!
	 */
	uint16_t fallback_voltage;
	// when to start flashing warning LED
	uint16_t warn_voltage;
	// counter for taking a few samples before flagging
	uint8_t until_bad_aux;
} battery_t;

// http://embeddedgurus.com/barr-code/2012/11/how-to-combine-volatile-with-struct/
battery_t volatile batt = { 0, 0, 0, 0 };

// sourcing from main battery
#define SIG_MAIN 1
// sourcing from AUX battery
#define SIG_AUX 2
// crash boom bang. also switch to main battery.
#define SIG_12V_DISABLE 3

typedef struct {
	// see SIG_*
	uint8_t status;
	// countdown to applying status change
	uint8_t until_flip;
} rc_signal_t;

rc_signal_t volatile signal = { 0, 0 };

static void apply_signal(void);

static void set_aux(uint8_t aux_status);

int main(void) {
	/**
	 * Pin configuration:
	 *
	 * PB0 (MOSI):
	 *   red LED (fault) output
	 * PB1 (AIN1, PCINT1, INT0, MISO):
	 *   RC signal digital input, external pull-up
	 * PB2 (SCK):
	 *   12V run output, external pull-up
	 * PB3 (ADC3):
	 *   switch & AUX LED output, external pull-down
	 * PB4 (ADC2, PCINT4):
	 *   AUX battery voltage (divider) input, pulled down naturally if no battery
	 * PB5 (RESET):
	 *   input with external pull-up, connected only to ISP
	 *
	 * Fuses:
	 *   CKSEL = b01 // 4.8MHz nominal clock
	 */

	// 12V to high before configuring it to output.
	// Note: could also leave to hi-z, but would need to
	// configure to output when switching off.. I don't
	// immediately like the idea. Now the MCU is sinking
	// a bit of current, though, I suppose.
	PORTB = _BV(PIN_12V);

	// configure outputs
	DDRB = _BV(PIN_SWITCH) | _BV(PIN_FAULT) | _BV(PIN_12V);

	// disable digital inputs except on AUX voltage
	DIDR0 = 0b111111 ^ _BV(ADC2D);

	// configure ADC to read PB4
	ADMUX = _BV(MUX1);

	// Enable INT0 and pin change interrupts. INT0 is triggered
	// on low by default, which is the correct mode initially (pin
	// pulled high externally).
	GIMSK = _BV(INT0) | _BV(PCIE);

	// enable pin change interrupt on AUX voltage
	PCMSK = _BV(PCINT4);

	// enable timer counter overflow interrupt
	TIMSK0 = _BV(TOIE0);

	// Switch to 1.2MHz.
	// Note: simulator ignores this if CKDIV8 fuse is set.
	clock_prescale_set(clock_div_4);

	// Configure ADC clock to 75kHz (1.2MHz / 16).
	// (Must be 50..200kHz.)
	ADCSRA = _BV(ADEN) | _BV(ADPS2);

	// global interrupt enable, SREG |= SREG_I
	sei();

	watchdog(WDTO_500MS);

	// Trigger first ADC only after the first watchdog timeout
	// to allow initializations. (Unsure whether the CPU power down
	// cancels all that, though.)
	//start_ADC();

	for (;;) {
		// configure sleep according to state

		if (is_timer_running()) {
			// only idle when timing high signal to keep IO clock running (for timer)
			MCUCR &= ~(_BV(SM0) | _BV(SM1)); // idle

		} else if (bit_is_set(ADCSRA, ADIE)) {
			// ADC is pending, conversion will start automatically with sleep.
			// Note that this will inhibit high signal tracking on INT0,
			// but the conversion should be finished well before the next rise.
			MCUCR = (MCUCR & ~_BV(SM1)) | _BV(SM0); // ADC noise reduction

		} else if (is_trigger_high()) {
			// ~18ms wait period on low signal, sleep or not? If we just idle
			// for now to avoid risks.. (Thus, configured now to use synchronous
			// INT0 on signal instead of async PCINT; easier interrupt handling.)
			MCUCR &= ~(_BV(SM0) | _BV(SM1)); // idle

		} else {
			// Set sleep mode to power down, watchdog or pin change
			// interrupt will wake up.
			MCUCR = (MCUCR & ~_BV(SM0)) | _BV(SM1); // power down
		}

		sleep_cpu();
	}
}

void apply_signal(void) {
	switch (signal.status) {
		case SIG_12V_DISABLE:
			// disable 12V and source from main (crashboombang)
			PORTB &= ~(_BV(PIN_SWITCH) | _BV(PIN_12V));
			break;

		case SIG_AUX:
			if (batt.aux_status >= AUX_WARN) {
				// source from AUX, 12V enabled
				PORTB |= _BV(PIN_SWITCH) | _BV(PIN_12V);
				break;
			}
			// else fall through

		default: // SIG_MAIN
			// source from main battery, 12V enabled
			PORTB = (PORTB | _BV(PIN_12V)) & ~_BV(PIN_SWITCH);
			break;
	}
}

void set_aux(uint8_t aux_status) {
	switch (batt.aux_status = aux_status) {
		case AUX_BAD:
			// switch to main battery, and light the LED
			PORTB = (PORTB | _BV(PIN_FAULT)) & ~_BV(PIN_SWITCH);
			break;

		case AUX_OK:
			// LED off immediately
			PORTB &= ~_BV(PIN_FAULT);
			// and fall through to counter reset

		default: // AUX_WARN
			batt.until_bad_aux = 0;
			break;
	}
}

/** RC signal handler. */
ISR(INT0_vect) {
	// Act based on trigger conf as PINB might already have flipped back. (And
	// the digital input is disabled anyways, due to this.)
	if (is_trigger_high()) {
		// Line is high, start timing the high period.

		// reset timer counter
		TCNT0 = 0;
		// set timer clock source to 1.2MHz/64 == 18.75kHz,
		// 2.2ms / 18.75Hz == 41.25
		TCCR0B = _BV(CS01) | _BV(CS00);
		// next interrupt on low
		MCUCR &= ~(_BV(ISC01) | _BV(ISC00));
		return;
	}

	// copy counter value to a register
	uint8_t pwm = TCNT0;
	// stop timer (after copying the value, to avoid surprises)
	TCCR0B = 0;
	// schedule next interrupt on rising edge
	MCUCR |= _BV(ISC01) | _BV(ISC00);

	// supported range [800..2240ms] == [15..42] @ 18.75kHz
	if (pwm < 15 || pwm > 42) {
		// invalid signal, reset counter
		if (signal.until_flip) {
			signal.until_flip = 5;
		}
		return;
	}

	uint8_t want = SIG_MAIN;
	if (pwm > 32) {
		// ]1653..2240ms]: disable 12V
		want = SIG_12V_DISABLE;
	} else if (pwm >= 25) {
		// [1333..1653ms]: switch to AUX
		want = SIG_AUX;
	}
	// else [800..1333ms[: switch to main

	if (want == signal.status) {
		if (signal.until_flip) {
			if (!--signal.until_flip) {
				apply_signal();
			}
		} // else the change is already applied
	} else {
		signal.status = want;
		signal.until_flip = 5;
	}
}

/** Stop timer on invalid RC signal. */
ISR(TIM0_OVF_vect) {
	// phase too long, stop timer
	TCCR0B = 0;
	// also reset counter in case it's been incrementing
	// during this interrupt handler (n00b doesn't know)
	TCNT0 = 0;
}

/** Process battery voltage. */
ISR(ADC_vect) {
	/**
	 * Note: Code here is very wasteful (as in byte size),
	 * but there's still lot of space left so I'm spending
	 * it on code clarity and accuracy. ("Clarity" in 1k
	 * context.)
	 */
	// doc says that low byte needs to be read first
	uint16_t v = ADCL;
	// splitting to a separate line to "ensure" proper ordering
	v |= ADCH << 8;
	// disable ADC interrupt
	ADCSRA &= ~_BV(ADIE);

	if (v < MIN_VOLTAGE) {
		// TODO countdown also this?
		set_aux(AUX_BAD);

		if (v < (MIN_VOLTAGE >> 1)) {
			/**
			 * This is the ONLY place for resetting the fallback
			 * voltage level, making sure the code doesn't reach
			 * the fallback calculation block below unintentionally.
			 *
			 * Having the level significantly above zero also
			 * should make sure to detect battery disconnect, so
			 * that the level is resetted and a new one calculated
			 * when a new battery is plugged in.
			 *
			 * (I'm also unwilling to rely purely on the digital
			 * low value for detecting battery disconnect; that sounds
			 * flaky. Digital low does trigger an ADC, though, so that
			 * we end up here quickly even from power down sleep.)
			 */
			batt.fallback_voltage = 0;
			batt.warn_voltage = 0;
		}

	} else if (!batt.fallback_voltage) {
		// fallback at 75%; floor the range, just for kicks
		batt.fallback_voltage = MAX(v - (v >> 2), MIN_VOLTAGE);
		// warning at 80%; the division takes up 92 bytes, TODO optimize
		// (12-bit value in word; can be shifted first before division)
		batt.warn_voltage = (v << 2) / 5;
		// take another sample before flagging ok
		// TODO average the levels from multiple samples?

	} else if (v <= batt.fallback_voltage) {
		if (batt.aux_status != AUX_BAD) {
			set_aux(AUX_WARN);
			if (!batt.until_bad_aux) {
				// initialize countdown
				batt.until_bad_aux = 4;
			} else if (!--batt.until_bad_aux) {
				set_aux(AUX_BAD);
			}
		}

	// 18mV "hysteresis" to prevent oscillation
	} else if (v > (batt.warn_voltage + 4)
	           || (!batt.aux_status && v > batt.warn_voltage)) {
		if (batt.aux_status != AUX_OK) {
			set_aux(AUX_OK);
		}

	} else if (batt.aux_status != AUX_WARN) {
		set_aux(AUX_WARN);
	}
}

/** Detect battery dis/connect. */
ISR(PCINT0_vect) {
	if (bit_is_clear(PINB, PIN_ADC)) {
		set_aux(AUX_BAD);
	}

	start_ADC();
}

/**
 * Use watchdog to initiate AUX battery voltage check on regular intervals.
 * Handles also fault LED blinking.
 */
ISR(WDT_vect) {
	switch (batt.aux_status) {
		case AUX_WARN:
			// Blink the fault LED at 1Hz as warning
			PORTB ^= _BV(PIN_FAULT);
			break;
		case AUX_BAD:
			PORTB |= _BV(PIN_FAULT);
			break;
		default: // AUX_OK
			PORTB &= ~_BV(PIN_FAULT);
			break;
	}

	start_ADC();
}
