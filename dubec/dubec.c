/*
 * dubec.c
 *
 * PWM relay switch tinyAVR application for DUBEC,
 * a dual channel voltage regulator.
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

// ~7.0v as a 10-bit ADC value with 34.52V calibration
#define MIN_VOLTAGE 208

// evaluates to true if is waiting for high RC signal
#define rc_high_int() (MCUCR & (_BV(ISC01) | _BV(ISC00)))

// evaluates to true if relay is set to AUX
#define is_aux() bit_is_set(PORTB, PB_RELAY)

// evaluates to true if timer is counting
#define is_timer_running() (TCCR0B)

// evaluates to true if ADC is enabled
#define is_ADC_pending() bit_is_set(ADCSRA, ADIE)

// configure watchdog with the given prescaler
#define configure_ADC(wdtp) ({ ATOMIC_BLOCK(ATOMIC_RESTORESTATE) { WDTCR = _BV(WDCE); WDTCR = wdtp; } WDTCR |= _BV(WDTIE); })

// Enable ADC and ADC interrupt, conversion will
// start automatically on noise reduction sleep.
// TODO doc says adsc must be set for on-sleep conversion, verify behaviour
// | _BV(ADSC)
#define start_ADC() ({ ADCSRA |= _BV(ADIE); })

// returns 75% of the value
#define PC75(a) (((a << 1) + a) >> 2)

#define MAX(a, b) (a > b ? a : b)

// how long to wait for capacitor to charge
volatile uint8_t startup_delay = WDTO_1S;

typedef struct {
	volatile uint8_t aux_ok;
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

int main(void) {
	/*
	 * Pin configuration:
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

	// configure ADC to read PB4
	ADMUX = _BV(MUX1);

	// Enable INT0 and pin change interrupts. INT0 is triggered
	// on low by default, which is the correct mode initially (pin
	// pulled high).
	GIMSK = _BV(INT0) | _BV(PCIE);

	/*
	 * Enable pin change interrupt on battery.
	 *
	 * Note 1: could use PCINT on RC signal as well, but as decided now
	 * to just idle during lows, can use synchoronous INT0 high.
	 *
	 * Note 2: disconnect fallback could be done more reliably in hardware,
	 * but this minor case hardly warrants the extra components. Also,
	 * the interrupt needn't to be configured yet (only after switch to AUX)
	 * but to keep things simple.
	 */
	PCMSK = _BV(PCINT4);

	// enable timer counter overflow interrupt
	TIMSK0 = _BV(TOIE0);

	// Switch to 9.6MHz.
	// Note: simulator ignores this if CKDIV8 fuse is set.
	clock_prescale_set(clock_div_1);

	// Configure ADC clock to 153.6kHz (9.6MHz / 64).
	// (Must be 50..200kHz.)
	ADCSRA = _BV(ADEN) | _BV(ADPS2) | _BV(ADPS1);

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
			// Set sleep mode to power down, low RC signal and watchdog
			// interrupt will wake up.
			MCUCR = (MCUCR & ~_BV(SM0)) | _BV(SM1); // power down
		}

		sleep_cpu();
	}
}

void set_relay(uint8_t aux) {
	// assert aux != is_aux()
	// don't allow relay switches before we have bridging power
	// from capacitor
	if (!startup_delay && aux != is_aux()) {
		if (!aux) {
			PORTB &= ~_BV(PB_RELAY);
		} else if (batt.aux_ok) {
			PORTB |= _BV(PB_RELAY);
		}
	}
	rc.until_flip = 0;
}

void aux_bad(void) {
	if (batt.aux_ok) {
		batt.aux_ok = FALSE;
		batt.until_bad_aux = 0;
		if (is_aux()) {
			// fallback to main AND DO IT NOW
			PORTB &= ~_BV(PB_RELAY);
			rc.until_flip = 0;
		}
		// speed up the ADC sampling rate
		configure_ADC(WDTO_60MS);
	}
}

/** RC ("PWM") signal handler. */
ISR (INT0_vect) {
	if (bit_is_set(PINB, PIN_RC)) {
		// line is high, start timing the high period
		// reset timer counter
		TCNT0 = 0;
		// set timer clock source to 9.6MHz/256 == 37.5kHz = 2.2ms/83
		TCCR0B = _BV(CS02);
		// next interrupt on low
		MCUCR &= ~(_BV(ISC01) | _BV(ISC00));

	} else {
		// copy counter value to a register
		uint8_t counter = TCNT0;
		// stop timer (but only after copying the value,
		// to avoid surprises)
		TCCR0B = 0;
		// schedule next interrupt on rising edge
		MCUCR |= _BV(ISC01) | _BV(ISC00);

		if (!counter) {
			// couldn't read a proper signal, ignore
			// (invalid signal or a state problem)
			rc.until_flip = 0;

		} else {
			// if RC signal high for ]57..93[ 37.5kHz == [1520..2400ms], want AUX
			// TODO calibrate (runtime?)
			uint8_t want_aux = counter >= 57 && counter <= 93;

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
		if (batt.aux_ok) {
			if (!batt.until_bad_aux) {
				// initialize countdown
				batt.until_bad_aux = 3;
			} else if (!--batt.until_bad_aux) {
				aux_bad();
			}
		} // else no need to do anything

	// 0.1V "hysteresis" on fallback level to prevent oscillation
	} else if (!batt.aux_ok && v > (batt.fallback_voltage + 2)) {
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
		// watchdog period configured by three LSBs
		uint8_t wdtp = WDTCR & 0b111;
		// This is potentially very inaccurate, but let it suffice...
		// (If after 900ms a 1s prescaler is changed to 60ms,
		// the "lost" ~840ms won't be deducted from startup_delay.)
		if (startup_delay > wdtp) {
			startup_delay -= wdtp;
		} else {
			// don't rotate...
			startup_delay = 0;
		}
	}

	if (batt.aux_ok) {
		// slow down sampling
		configure_ADC(WDTO_1S);
	}

	start_ADC();
}

ISR (PCINT0_vect) {
	if (bit_is_clear(PINB, PIN_ADC)) {
		// TODO Too trigger-happy? An ADC confirmation
		// would only about 0.1ms.
		aux_bad();

	} else {
		// Just speed up sampling, it'll get slowed down if
		// everything is ok. (There must've been *something*
		// funny as we've ended up here...)
		configure_ADC(WDTO_60MS);
	}

	// start an immediate ADC
	start_ADC();
}
