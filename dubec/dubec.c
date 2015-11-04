/*
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
#define PIN_RC PORTB1
// 12V regulator on/off
#define PIN_12V PORTB2
// FET gate net (and green LED)
#define PIN_SWITCH PORTB3
// AUX battery voltage divider net
#define PIN_ADC PORTB4

// see batt.aux_status
#define AUX_UNKNOWN 0
#define AUX_BAD 1
#define AUX_WARN 2
#define AUX_OK 3

// ~6.0v as a 10-bit ADC value for 0.198V (2.94k/90.9k divider):
// (2.94/90.9 * 6V) * (1024 / 1.1V)
#define MIN_VOLTAGE 180

// evaluates to true if waiting for high RC signal
#define rc_high_int() (MCUCR & (_BV(ISC01) | _BV(ISC00)))

// evaluates to true if switch is set to AUX
#define is_aux() bit_is_set(PORTB, PIN_SWITCH)

// evaluates to true if timer is counting
#define is_timer_running() (TCCR0B)

// evaluates to true if ADC is enabled
#define is_ADC_pending() bit_is_set(ADCSRA, ADIE)

// configure watchdog with the given prescaler
#define configure_ADC(wdtp) ({ ATOMIC_BLOCK(ATOMIC_RESTORESTATE) { WDTCR = _BV(WDCE); WDTCR = wdtp; } WDTCR |= _BV(WDTIE); })

// returns 75% of the value
#define PC75(a) (((a << 1) + a) >> 2)

// returns greater of arguments
#define MAX(a, b) (a > b ? a : b)

typedef struct {
	volatile uint8_t aux_status;
	// when to start flashing warning LED
	volatile uint16_t warn_voltage;
	// counter for taking a few samples before flagging
	volatile uint8_t until_bad_aux;
	/*
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
	volatile uint16_t fallback_voltage;
	volatile uint8_t until_blink;
} battery_t;

battery_t batt = { AUX_UNKNOWN, 0, 0, 0, 0 };

// evaluates to true if switch is set to AUX
#define aux_ok() ( batt.aux_status == AUX_OK )

typedef struct {
	// countdown to battery switch
	volatile uint8_t until_flip;
} control_t;

control_t rc = { 0 };

static uint8_t wdt_time(uint8_t wdto);
static void set_switch(uint8_t port);
static void aux_bad(void);

uint8_t wdt_time(uint8_t wdto) {
	switch (wdto) {
		case WDTO_15MS:
			return 1;
		case WDTO_30MS:
			return 2;
		case WDTO_60MS:
			return 4;
		case WDTO_120MS:
			return 8;
		case WDTO_250MS:
			return 16;
		default: // 500ms and up
			return 32;
	}
}

int main(void) {
	/*
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
	 *   floating, pull-up input
	 *
	 * Fuses:
	 *   CKSEL = b01 // 4.8MHz nominal clock
	 */

	// configure fault LED and switch as output
	DDRB = _BV(PIN_FAULT) | _BV(PIN_SWITCH);

	// active internal pull-ups on floating pins (just reset ATM)
	PORTB = _BV(PORTB5);

	// disable digital inputs
	DIDR0 = _BV(AIN1D) | _BV(ADC2D) | _BV(ADC3D);

	// configure ADC for internal reference and to read PB4
	ADMUX = _BV(REFS0) | _BV(MUX1);

	// Enable INT0 and pin change interrupts. INT0 is triggered
	// on low by default, which is the correct mode initially (pin
	// pulled high externally).
	GIMSK = _BV(INT0);

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

	configure_ADC(WDTO_60MS);

	for (;;) {
		// configure sleep according to state

		if (is_timer_running()) {
			// idle only when timing high RC, to avoid
			// ADC interrupt disturbances
			MCUCR &= ~(_BV(SM0) | _BV(SM1)); // idle

		} else if (is_ADC_pending()) {
			// ADC conversion will start automatically with sleep.
			// Note that this will inhibit high signal tracking
			// on INT0, but the conversion should be well finished
			// before the next rise.
			MCUCR = (MCUCR & ~_BV(SM1)) | _BV(SM0); // ADC noise reduction

		} else if (rc_high_int()) {
			// ~18ms wait period on RC low, sleep or not? If we just idle
			// for now to avoid risks.. (Thus, configured now to use synchronous
			// INT0 on RC instead of async PCINT; easier interrupt handling.)
			MCUCR &= ~(_BV(SM0) | _BV(SM1)); // idle

		} else {
			// Set sleep mode to power down, watchdog interrupt will wake up.
			MCUCR = (MCUCR & ~_BV(SM0)) | _BV(SM1); // power down
		}

		sleep_cpu();
	}
}

void set_switch(uint8_t aux) {
	// assert aux != is_aux()
	if (aux != is_aux()) {
		if (!aux) {
			PORTB &= ~_BV(PIN_SWITCH);
		} else if (aux_ok()) {
			PORTB |= _BV(PIN_SWITCH);
		}
	}
	rc.until_flip = 0;
}

void aux_bad(void) {
	if (batt.aux_status != AUX_BAD) {
		batt.aux_status = AUX_BAD;
		batt.until_bad_aux = 0;
		if (is_aux()) {
			// fallback to main AND DO IT NOW
			PORTB &= ~_BV(PIN_SWITCH);
			rc.until_flip = 0;
		}
		// speed up the ADC sampling rate
		configure_ADC(WDTO_60MS);
		PORTB |= _BV(PIN_FAULT);
	}
}

/** RC ("PWM") signal handler. */
ISR (INT0_vect) {
	if (rc_high_int()) { // Maybe more reliable than PINB value...
		// Line is high, start timing the high period.

		// reset timer counter
		TCNT0 = 0;
		// set timer clock source to 1.2MHz/64 == 18.75kHz,
		// 2.2ms / 18.75Hz == 41.25
		TCCR0B = _BV(CS01) | _BV(CS00);
		// next interrupt on low
		MCUCR &= ~(_BV(ISC01) | _BV(ISC00));

	} else {
		// copy counter value to a register
		uint8_t counter = TCNT0;
		// stop timer (but only after copying the value, to avoid surprises)
		TCCR0B = 0;
		// schedule next interrupt on rising edge
		MCUCR |= _BV(ISC01) | _BV(ISC00);

		if (!counter) {
			// Couldn't read a proper signal, ignore.
			// (Invalid signal or a state problem.)
			rc.until_flip = 0;

		} else {
			// if RC signal high for [1493..2240ms] == [28..42] @ 18.75kHz, want AUX
			uint8_t want_aux = counter >= 28 && counter <= 42;

			if (want_aux == is_aux()) {
				// switch is consistent with signal, just reset counter
				rc.until_flip = 0;

			} else if (!rc.until_flip) {
				// else initiate flip
				rc.until_flip = 5;

			} else if (!--rc.until_flip) {
				// switch change reached, finally
				set_switch(want_aux);
			}
		}
	}
}

/** Stop timer on invalid RC signal. */
ISR (TIM0_OVF_vect) {
	// phase too long, stop timer
	TCCR0B = 0;
	// also reset counter in case it's been incrementing
	// during this interrupt handler (n00b doesn't know)
	TCNT0 = 0;
}

/* Process battery voltage. */
ISR(ADC_vect) {
	/*
	 * Note: Code here is very wasteful (as in byte size),
	 * but there's still lot of space left so I'm spending
	 * it on code clarity and accuracy. ("Clarity" in 1k
	 * context.)
	 */
	// doc says that low byte needs to be read first
	uint8_t vl = ADCL;
	uint16_t v = ADCH;
	v <<= 8;
	v |= vl;
	// disable ADC interrupt
	ADCSRA &= ~_BV(ADIE);

	if (v < (MIN_VOLTAGE >> 1)) {
		/*
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
	}

	if (v < MIN_VOLTAGE) {
		aux_bad();

	} else if (!batt.fallback_voltage) {
		// floor the fallback, just for kicks
		batt.fallback_voltage = MAX(PC75(v), MIN_VOLTAGE);
		// take another sample before flagging ok

	} else if (v <= batt.fallback_voltage) {
		if (batt.aux_status != AUX_BAD) {
			batt.aux_status = AUX_WARN;
			if (!batt.until_bad_aux) {
				// initialize countdown
				batt.until_bad_aux = 3;
			} else if (!--batt.until_bad_aux) {
				aux_bad();
			}
		} // else no need to do anything

	} else if (v <= batt.warn_voltage) {
		if (batt.aux_status != AUX_WARN) {
			batt.aux_status = AUX_WARN;
			batt.until_blink = wdt_time(WDTO_500MS);
			PORTB |= _BV(PIN_FAULT);
		}

	// 0.1V "hysteresis" on fallback level to prevent oscillation
	} else if (!aux_ok() && v > (batt.warn_voltage + 2)) {
		batt.aux_status = AUX_OK;
		// reset countdown
		batt.until_bad_aux = 0;
		batt.until_blink = 0;
		PORTB &= ~_BV(PIN_FAULT);
	}
}

/*
 * Use watchdog to initiate AUX battery voltage check on regular intervals.
 * Handles also startup delay and voltage warning.
 */
ISR (WDT_vect) {
	// Blink the fault LED at 1Hz as warning
	if (batt.aux_status == AUX_WARN) {
		// watchdog period configured by three LSBs
		uint8_t wdt_t = wdt_time(WDTCR & 0b111);
		if (batt.until_blink > wdt_t) {
			batt.until_blink -= wdt_t;
		} else {
			PORTB ^= _BV(PIN_FAULT);
			batt.until_blink = wdt_time(WDTO_500MS);
		}
	}

	if (batt.aux_status != AUX_BAD) {
		// slow down sampling
		configure_ADC(WDTO_500MS);
	}

	// Enable ADC and ADC interrupt, conversion will
	// start automatically on noise reduction sleep.
	ADCSRA |= _BV(ADIE) | _BV(ADSC);
}
