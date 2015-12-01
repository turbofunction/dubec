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
#define PIN_AUX_NOT_BAD PORTB0
// RC signal input
#define PIN_SIG PORTB1
// 12V regulator on/off
#define PIN_12V PORTB2
// FET gate net (and green LED)
#define PIN_BATT_SWITCH PORTB3
// AUX battery voltage divider net
#define PIN_ADC PORTB4

/**
 * Range with 17.8k/2.74k divider: [6..33.6V] -> [0.8..4.482V]
 * With 4.8V VCC: 0.8V / 4.8V * 1024 = 171
 * Where 171 is the ADC value for 6V.
 */
//#define MIN_VOLTAGE 171 <- 10-bit
#define MIN_VOLTAGE 42 // <- 8-bit

// switch between main and AUX battery
#define batt_main() { PORTB &= ~_BV(PIN_BATT_SWITCH); }
#define batt_aux() { PORTB |= _BV(PIN_BATT_SWITCH); }

// hi-z the line to allow it to get pulled high
#define enable_12V() { DDRB &= ~_BV(PIN_12V); }
// pull line low by enabling output
#define disable_12V() { DDRB |= _BV(PIN_12V); }

// toggle red LED by enabling/disabling low output
#define warn_on() { DDRB |= _BV(PIN_AUX_NOT_BAD); }
#define warn_off() { DDRB &= ~_BV(PIN_AUX_NOT_BAD); }
#define warn_toggle() { DDRB ^= _BV(PIN_AUX_NOT_BAD); }

// evaluates to true if waiting for high RC signal
#define is_trigger_high() (MCUCR & (_BV(ISC01) | _BV(ISC00)))

// evaluates to true if timer is counting
#define is_timer_running() (TCCR0B)

// configure watchdog with the given prescaler
#define watchdog(wdtp) ({ ATOMIC_BLOCK(ATOMIC_RESTORESTATE) { WDTCR = _BV(WDCE); WDTCR = wdtp; } WDTCR |= _BV(WDTIE); })

// Enable ADC and ADC interrupt, conversion will
// start automatically on noise reduction sleep.
#define start_ADC() { ADCSRA |= _BV(ADIE) | _BV(ADSC); }

#define MIN(a, b) (a < b ? a : b)
#define MAX(a, b) (a < b ? b : a)

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
	 * Note 1: 10-bit ADC value is cropped down to 8-bit value
	 * to save program space. 20mV resolution should be enough...
	 *
	 * Note 2: There's a(n incomplete) version in history with
	 * cell count detection, but it didn't feel to be significantly
	 * better. (Better as in avoiding unnecessary fallbacks versus
	 * killing batteries.) And, to keep in mind, I intend to use this
	 * with my own batteries as well.
	 *
	 * Rule: Don't launch with a drained battery!
	 */
	uint8_t fallback_voltage;
	// when to start flashing warning LED
	uint8_t warn_voltage;
	// battery voltage sample memory
	uint8_t samples[3];
} battery_t;

// http://embeddedgurus.com/barr-code/2012/11/how-to-combine-volatile-with-struct/
// also: initializing to zero, just to avoid thinking
// that "this variable can't have an unknown value"
battery_t volatile batt = { 0, 0, 0, { 0 } };

// sourcing from main battery
#define SIG_MAIN 1
// sourcing from AUX battery
#define SIG_AUX 2
// crash boom bang. also switch to main battery.
#define SIG_12V_DISABLE 3

typedef struct {
	// see SIG_*
	uint8_t status;
	// user is switching into a different mode,
	// to be applied after counter
	uint8_t pending;
	// countdown to applying status change
	uint8_t until_flip;
} rc_signal_t;

rc_signal_t volatile signal = { 0, 0, 0 };

static void process_voltage(void);

static void apply_state(void);

static void set_aux(uint8_t aux_status);


int main(void) {
	/**
	 * Pin configuration:
	 *
	 * PB0 (MOSI):
	 *   red LED (bad AUX voltage) output; low-side, inverted
	 * PB1 (AIN1, PCINT1, INT0, MISO):
	 *   RC signal digital input, external pull-up
	 * PB2 (SCK):
	 *   12V run output, external pull-up
	 * PB3 (ADC3):
	 *   battery switch & AUX LED output, external pull-down
	 * PB4 (ADC2, PCINT4):
	 *   AUX battery voltage (divider) input, pulled down naturally if no battery
	 * PB5 (RESET):
	 *   input with external pull-up, connected only to ISP
	 *
	 * Fuses:
	 *   CKSEL = b01 // 4.8MHz nominal clock
	 */

	// configure outputs
	DDRB = _BV(PIN_BATT_SWITCH);

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
		// zero sample value signifies that the memory is processed
		if (batt.samples[0]) {
			process_voltage();
		}

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


static void process_voltage(void) {
	// take a local copy
	uint8_t samples[3] = { batt.samples[0], batt.samples[1], batt.samples[2] };

	// rotate the sample memory and flag processed
	batt.samples[2] = samples[1];
	batt.samples[1] = samples[0];
	batt.samples[0] = 0;

	// Calculate the average. (Need more bits for the calculation.)
	// Split into separate lines to hint about the precision.
	uint16_t v_avg = samples[0];
	v_avg += samples[1];
	v_avg += samples[2];
	v_avg /= 3;

	uint8_t v_max = MAX(samples[0], MAX(samples[1], samples[2]));

	if (v_max < (MIN_VOLTAGE >> 1)) {
		set_aux(AUX_BAD);
		/**
		 * Need to be very careful when resetting the
		 * fallback voltage, so that it won't get reseted
		 * when there's eg. some sudden voltage ripple/sag
		 * due to a transient load.
		 *
		 * This is ensured now by checking that all the
		 * ADC samples are low.
		 */
		batt.fallback_voltage = 0;
		batt.warn_voltage = 0;
		return;
	}

	// All samples are now checked to be significantly non-zero,
	// next step is to check that they're somewhat stable.
	// (All within 40mV.)
	uint8_t v_diff = v_max - MIN(samples[0], MIN(samples[1], samples[2]));
	if (v_diff > 2) {
		// defer any action if voltage is unstable
		return;
	}

	if (v_avg < MIN_VOLTAGE) {
		set_aux(AUX_BAD);

	} else if (!batt.fallback_voltage) {
		// fallback at 75%; floor the range, just for kicks
		batt.fallback_voltage = MAX(v_avg - (v_avg >> 2), MIN_VOLTAGE);
		// Warning at 80%. The division takes up serious space, TODO optimize.
		batt.warn_voltage = (v_avg << 2) / 5;
		// wait for at least one more round until considering ok

	} else if (v_avg <= batt.fallback_voltage) {
		set_aux(AUX_BAD);

	} else if (v_avg <= batt.warn_voltage) {
		set_aux(AUX_WARN);

	// 40mV hysteresis to prevent oscillation
	} else if (v_avg > (batt.warn_voltage + 1)) {
		set_aux(AUX_OK);

	// Don't get stuck on initial bad status. Could combine with
	// above, but more clear this way. Also, setting to OK instead
	// of warning -- even if it's just by a hair -- to respect
	// the calculated warning voltage level.
	} else if (!batt.aux_status || batt.aux_status == AUX_BAD) {
		set_aux(AUX_OK);
	}
}


static void apply_state(void) {
	// apply signal status first
	switch (signal.status) {
		case SIG_12V_DISABLE:
			// crashboombang-mode
			batt_main();
			disable_12V();
			break;

		case SIG_AUX:
			if (batt.aux_status >= AUX_WARN) {
				batt_aux();
				enable_12V();
				break;
			}
			// else fall through

		default: // SIG_MAIN
			batt_main();
			enable_12V();
			break;
	}

	// then set also the LED state
	switch (batt.aux_status) {
		case AUX_OK:
			warn_off();
			break;

		case AUX_WARN:
			// let the watchdog loop blink at its own rate
			break;

		case AUX_BAD:
		default:
			warn_on();
			break;
	}
}


static void set_aux(uint8_t aux_status) {
	if (batt.aux_status != aux_status) {
		batt.aux_status = aux_status;
		apply_state();
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

	// accepted range [800..2240ms] == [15..42] @ 18.75kHz
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

	if (want == signal.pending) {
		if (signal.until_flip) {
			if (!--signal.until_flip) {
				signal.status = signal.pending;
				apply_state();
			}
		} // else the change is already applied
	} else {
		signal.pending = want;
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
	// Documentation states that the low byte needs to be read first.
	// Cropping directly to byte. (IIRC there's a bit ordering option
	// for the 8 bit resolution, but let it be just in default
	// configuration for now...)
	uint8_t v = ADCL >> 2;
	// read the high byte on a separate line to "ensure" proper ordering
	v |= ADCH << 6;

	// at least 1 to flag the memory as unprocessed
	batt.samples[0] = MAX(1, v);

	// disable ADC interrupt
	ADCSRA &= ~_BV(ADIE);
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
 * Handles also bad AUX voltage LED blinking.
 */
ISR(WDT_vect) {
	if (batt.aux_status == AUX_WARN) {
		// blink the red LED at 1Hz as warning
		warn_toggle();
	}

	start_ADC();
}
