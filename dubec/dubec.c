/*
 * DUBEC_App.c
 *
 *
 * I'm still somewhat undecided whether nested if blocks
 * or surprise return statements are prettier, but I went
 * with the labyrinthine if blocks for now.
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

#define PB_RELAY PORTB0

#define PIN_RC PINB1

#define PIN_ADC PINB4

#define MIN_VOLTAGE 60 // ~7.7v as 8-bit ADC

// evaluates to true if waiting for high RC signal
#define rc_high_int() (MCUCR & (_BV(ISC01) | _BV(ISC00)))

// evaluates to true if relay is set to AUX
#define is_aux() bit_is_set(PORTB, PB_RELAY)

// reset timer counter and set clock source to 8MHz/256 == 32kHz = 2.2ms/69
#define start_timer() ({TCNT0 = 0; TCCR0B = _BV(CS02);})

// evaluates to true if timer is counting
#define is_timer_running() (TCCR0B)

// evaluates to true if ADC is enabled
#define is_adc_pending() bit_is_set(ADCSRA, ADEN)

#define MAX(a, b) (a > b ? a : b)

// how long to wait for capacitor to charge
volatile uint8_t startup_delay = WDTO_1S;

typedef struct {
	volatile uint8_t aux_ok;
	/*
	 * Fallback level is set to 75% of measured initial level.
	 *
	 * Note: There's a(n incomplete) version in history with
	 * cell count detection, but it wasn't significantly better.
	 ' (Better as in avoiding unnecessary fallbacks versus killing
	 * batteries.) And, to keep in mind, I programmed this to be
	 * used with my own batteries as well.
	 *
	 * Rule: Don't launch with a drained battery!
	 */
	volatile uint8_t fallback_voltage;
	// counter for taking a few samples before flagging
	volatile uint8_t until_bad_aux;
} battery_t;

battery_t batt = { FALSE, 0, 0 };

typedef struct {
	// countdown to relay flip
	volatile uint8_t until_flip;
} control_t;

control_t rc = { 0 };

static void set_relay(uint8_t port);
static void aux_bad(void);
// configures watchdog with the given prescaler
static void sample_ADC(uint8_t wdtp);

int main(void) {
	/*
	 * Port configuration:
	 *
	 * PB0 (MOSI): relay & AUX LED output
	 * PB1 (PCINT1, INT0, MISO): RC signal digital input (external pull-up)
	 * PB2 (SCK): floating, pull-up input
	 * PB3 (NC): floating, pull-up input
	 * PB4 (ADC2, PCINT4): AUX battery voltage (divider) input (external pull-down)
	 * PB5 (RESET): floating, pull-up input
	 *
	 * Note: normally floating pins PB2 and PB5 are connected to ISP.
	 *
	 * Default fuses are fine.
	 */

	// configure relay as the sole output
	DDRB = _BV(DDB0);

	// active internal pull-ups (but don't high the real outputs, ie. relay)
	PORTB = _BV(PORTB5) | _BV(PORTB3) | _BV(PORTB2);

	// Disable digital input only on relay. Leaving it on for ADC to get
	// battery disconnect interrupt.
	DIDR0 = _BV(AIN0D);

	// configure ADC result alignment and to read PB4
	ADMUX = _BV(ADLAR) | _BV(MUX1);

	// Enable INT0 and pin change interrupts. INT0 is triggered
	// on low by default, which is the correct mode initially (pin
	// pulled high).
	GIMSK = _BV(INT0) | _BV(PCIE);

	// Enable pin change interrupt on battery.
	//
	// Note 1: could use PCINT on RC signal as well, but as decided now
	// to just idle during lows, can use synchoronous INT0 high.
	//
	// Note 2: disconnect fallback could be done more reliably in hardware,
	// but this minor case hardly warrants the extra components. Also,
	// the interrupt needn't to be configured yet (only after switch to AUX)
	// but to keep things simple.
	PCMSK = _BV(PCINT4);

	// enable timer counter overflow interrupt
	TIMSK0 = _BV(TOIE0);

	sample_ADC(WDTO_60MS);

	// Switch to 9.6MHz.
	// Note: simulator ignores this if CKDIV8 fuse is set.
	clock_prescale_set(clock_div_1);

	// global interrupt enable, SREG |= SREG_I
	sei();

	for (;;) {
		// Configure sleep according to state. Also, write fresh eeprom
		// before first sleep.

		if (is_timer_running()) {
			// idle only when timing high RC
			MCUCR &= ~(_BV(SM0) | _BV(SM1)); // idle

		} else if (is_adc_pending()) {
			// ADC conversion will start automatically with sleep.
			// Note that this will inhibit high signal tracking
			// on INT0, but the conversion should be well finished
			// before the next rise.
			MCUCR = (MCUCR & ~_BV(SM1)) | _BV(SM0); // ADC noise reduction

		} else if (rc_high_int()) {
			// ~18ms wait period on RC low, sleep or not? If we just idle
			// for now to avoid risks.. (Thus, configured to use synchronous
			// INT0 on RC instead of async PCINT; easier interrupt handling.)
			MCUCR &= ~(_BV(SM0) | _BV(SM1)); // idle

		} else {
			// Set sleep mode to power down, low RC signal and watchdog
			// interrupt will wake up.
			MCUCR = (MCUCR & ~_BV(SM0)) | _BV(SM1); // power down
		}

		sleep_cpu();
	}
}

void sample_ADC(uint8_t wdtp) {
	if ((WDTCR & 0b111) != wdtp) {
		ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
			WDTCR = _BV(WDCE);
			WDTCR = wdtp;
		}
		WDTCR |= _BV(WDTIE);
	}
}

void set_relay(uint8_t aux) {
	// assert aux != is_aux()
	// don't allow relay switches before we have bridging power
	// from capacitor
	if (!startup_delay) {
		if (!aux) {
			PORTB &= ~_BV(PB_RELAY);
		} else if (batt.aux_ok) {
			PORTB |= _BV(PB_RELAY);
		}
	}
	rc.until_flip = 0;
}

void aux_bad(void) {
	batt.aux_ok = FALSE;
	batt.fallback_voltage = 0;
	batt.until_bad_aux = 0;
	if (is_aux()) {
		// fallback to main AND DO IT NOW
		PORTB &= ~_BV(PB_RELAY);
		rc.until_flip = 0;
	}
	// speed up the ADC sampling rate
	sample_ADC(WDTO_60MS);
}

/** RC ("PWM") signal handler */
ISR (INT0_vect) {
	// stop timer in any case
	TCCR0B = 0;

	if (bit_is_set(PINB, PIN_RC)) {
		// line is high, next interrupt on low
		MCUCR &= ~(_BV(ISC01) | _BV(ISC00));
		start_timer();

	} else {
		// schedule next interrupt on rising edge
		MCUCR |= _BV(ISC01) | _BV(ISC00);

		uint8_t counter = TCNT0;

		if (!counter) {
			// couldn't read a proper signal, ignore
			// (invalid signal or a state problem)
			rc.until_flip = 0;

		} else {
			// if RC signal high for ]56..92[ 37.5kHz == [1512..2484ms], want AUX
			// TODO calibrate (runtime?)
			uint8_t want_aux = counter > 46 && counter < 80;

			if (want_aux == is_aux()) {
				// relay is consistent with signal, just reset counter
				rc.until_flip = 0;

			} else if (!rc.until_flip) {
				// else initiate flip
				rc.until_flip = 5;

			} else if (!--rc.until_flip) {
				// relay change reached, finally
				set_relay(want_aux);
			}
		}
	}
}

ISR (TIM0_OVF_vect) {
	// phase too long, stop timer
	TCCR0B = 0;
	// also reset counter in case it's been incrementing
	// during this interrupt handler (n00b doesn't know)
	TCNT0 = 0;
}

/*
 * Read battery voltage.
 */
ISR(ADC_vect) {
	// use just the upper 8 bits
	uint8_t v = ADCH;
	// disable ADC
	ADCSRA = 0;

	if (v < MIN_VOLTAGE) {
		aux_bad();

	} else if (!batt.fallback_voltage) {
		// Set fallback to 75% of battery voltage.
		// (Addition didn't save that many bytes with 8 bits.)
		batt.fallback_voltage = MAX((v >> 2) * 3, MIN_VOLTAGE);
		// take another sample before flagging ok

	} else if (v < batt.fallback_voltage) {
		if (!batt.until_bad_aux) {
			// initialize countdown
			batt.until_bad_aux = 3;
		} else if (!--batt.until_bad_aux) {
			aux_bad();
		}

	} else {
		batt.aux_ok = TRUE;
		// reset countdown
		batt.until_bad_aux = 0;
	}
}

/*
 * Use watchdog to initiate AUX battery voltage check on regular intervals.
 */
ISR (WDT_vect) {
	if (startup_delay) {
		uint8_t wdtp = WDTCR & 0b111;
		// This is potentially very inaccurate, but let it suffice...
		// (If after 900ms a 1s prescaler is changed to 60ms,
		// the "lost" ~840ms won't be deducted from startup_delay.)
		if (startup_delay > wdtp) {
			startup_delay -= wdtp;
		} else {
			// floor to zero
			startup_delay = 0;
		}
	}

	if (batt.aux_ok) {
		// slow down sampling
		sample_ADC(WDTO_1S);
	}

	// enable ADC and ADC interrupt, conversion will
	// start automatically on noise reduction sleep
	ADCSRA |= _BV(ADEN) | _BV(ADIE);
}

ISR (PCINT0_vect) {
	if (bit_is_clear(PINB, PIN_ADC)) {
		// AUX disconnected
		aux_bad();
	}

	// Always speed up sampling, it'll get slowed down if
	// everything is ok. (There must've been something funny
	// as we've ended up here...)
	sample_ADC(WDTO_60MS);
}
