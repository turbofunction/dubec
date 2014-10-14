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

#include <avr/eeprom.h>
#include <avr/interrupt.h>
#include <avr/io.h>
#include <avr/power.h>
#include <avr/sleep.h>
#include <avr/wdt.h>

/*
#include <inttypes.h>
#include <avr/common.h>
#include <avr/lock.h>
#include <util/delay.h>
#include <math.h>
*/

// abundance of RAM, no need to obfuscate code with bit fields
#define TRUE 1
#define FALSE 0

#define PB_RELAY PORTB0

#define PIN_RC PINB1

#define PIN_ADC PINB4

#define EEPROM_VERSION 0b10101010 // hopefully less collisions...

// evaluates to true if waiting for high RC signal
#define rc_high_int() (MCUCR & (_BV(ISC01) | _BV(ISC00)))

// evaluates to true if relay is set to AUX
#define is_aux() bit_is_set(PORTB, PB_RELAY)

// reset timer counter and set clock source to 8MHz/256 == 32kHz = 2.2ms/69
#define start_timer() ({TCNT0 = 0; TCCR0B = _BV(CS02);})

// evaluates to true if timer is counting
#define is_timer_running() (TCCR0B)

// schedule an ADC by enabling watchdog interrupt
#define schedule_adc() ({WDTCR |= _BV(WDTIE);})

// evaluates to true if ADC is enabled
#define is_adc_pending() bit_is_set(ADCSRA, ADEN)

#define MAX(a, b) (a > b ? a : b)

uint8_t EEMEM ee_ver;

typedef struct {
	/*
	 * The per-cell difference between an empty
	 * 8S (3V/cell) and a full 7S (both 29.4V)
	 * is 0.525V. Thus, border_volt is the ADC value
	 * for 4.2V - 0.525V == 3.675V.
	 *
	 * ATtiny13 ADC is 10-bit, but 16-bit multiply
	 * and division resulted in over 100 extra bytes,
	 * so calculations need to be done in 8 bits.
	 *
	 * To err on the over-full side (to avoid unnecessary
	 * fallbacks), an up-rounding gives 28 == 3.86V as
	 * an 8-bit ADC value.
	 *
	 * A lookup table for how many cells are assumed
	 * in the battery would look like this:
	 *
	 * 30.8V or more = 8S
	 * 27.0V = 7S
	 * 23.1V = 6S
	 * 19.3V = 5S
	 * 15.4V = 4S
	 * otherwise = 3S
	 *
	 * (So, you'll miss the automatic fallback with a battery
	 * with under 3.86V per cell avg.)
	 */
	uint8_t border_volt;
	// set to TRUE if get low ADC on AUX battery
	uint8_t aux_fault;
} eeprom01_t;

eeprom01_t EEMEM ee_floppy;

// theoretical division for 10 bit ADC is 35.224V = 5V = 0x3ff = 1024,
// thus 4.2V = 1024 * 4.2 / 35.224 = 122
eeprom01_t floppy = { 27, FALSE };

volatile uint8_t eeprom_dirty = FALSE;

// how many watchdog cycles to wait for capacitor to charge
volatile uint8_t startup_delay = 3;

typedef struct {
	// ADC value for when battery is considered empty
	volatile uint16_t empty_v;
	// countdown, set on first low voltage
	volatile uint8_t until_fallback;
	// skip some ADC samples after relay switch (don't know watchdog timing)
	volatile uint8_t adc_skips;
} battery_t;

battery_t batt = { 0, 0, 1 };

typedef struct {
	// countdown to relay flip
	volatile uint8_t until_flip;
} control_t;

control_t rc = { 0 };

static void load_eeprom(void);
static void save_eeprom(void);
static void set_relay(uint8_t port);
static void aux_fault(uint8_t is_true);

int main(void) {
	/*
	 * Port configuration:
	 *
	 * PB0 (MOSI): relay & AUX LED output
	 * PB1 (PCINT1, INT0, MISO): RC signal digital input (external pull-up)
	 * PB2 (SCK): floating, pull-up input
	 * PB3 (NC): floating, pull-up input
	 * PB4 (ADC2, PCINT4): battery voltage divider input (external pull-down)
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

	// Switch to 9.6MHz.
	// Note: simulator ignores this if CKDIV8 fuse is set.
	clock_prescale_set(clock_div_1);

	load_eeprom();

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

	// watchdog enable change
	WDTCR = _BV(WDCE);
	// Configure watchdog prescaler to 0.5s.
	// NOTE: keep it simple as we have only a four clock window.
	WDTCR = _BV(WDTO_500MS);
	// enable watchdog interrupt to countdown startup_delay
	WDTCR |= _BV(WDTIE);

	// global interrupt enable, SREG |= SREG_I
	sei();

	for (uint8_t skip_sleeps = 0;;) {
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

		} else if (eeprom_dirty) {
			// will miss a few signals, but so not...
			save_eeprom();
			skip_sleeps = 1;

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

		// wdt_reset();

		if (skip_sleeps) {
			--skip_sleeps;
		} else {
			sleep_cpu();
		}
	}
}

void load_eeprom(void) {
	switch (eeprom_read_byte(&ee_ver)) {
		case EEPROM_VERSION:
			eeprom_read_block(&floppy, &ee_floppy, sizeof(eeprom01_t));
			eeprom_dirty = FALSE;

		default:
			eeprom_dirty = TRUE;
	}
}

/*
 * EEPROM programming time is 1.8ms, so latency for 4 bytes is 7.2ms?
 */
void save_eeprom(void) {
	eeprom_write_byte(&ee_ver, EEPROM_VERSION);
	eeprom_write_block(&floppy, &ee_floppy, sizeof(eeprom01_t));
	eeprom_dirty = FALSE;
}

void set_relay(uint8_t aux) {
	// assert aux != is_aux()
	if (aux) {
		PORTB |= _BV(PB_RELAY);
	} else {
		PORTB &= ~_BV(PB_RELAY);
	}
	batt.empty_v = 0;
	batt.until_fallback = 0;
	batt.adc_skips = 1;
	rc.until_flip = 0;
	if (aux) {
		schedule_adc();
	}
}

void aux_fault(uint8_t flag) {
	// assert floppy.aux_fault != flag
	floppy.aux_fault = flag;
	eeprom_dirty = TRUE;
}

/** RC ("PWM") signal handler */
ISR (INT0_vect) {
	// stop timer in any case
	TCCR0B = 0;

	if (bit_is_set(PINB, PIN_RC)) {
		// line is high, next interrupt on low
		MCUCR &= ~(_BV(ISC01) | _BV(ISC00));
		// start timer
		start_timer();

	} else {
		// schedule next interrupt on rising edge
		MCUCR |= _BV(ISC01) | _BV(ISC00);

		uint8_t counter = TCNT0;

		if (!counter) {
			// couldn't read a proper signal, ignore
			// (too long or a state problem)
			rc.until_flip = 0;

		} else {
			// if RC signal high for ]56..92[ 37.5kHz == [1512..2484ms], want AUX
			// TODO calibrate (runtime?)
			uint8_t want_aux = counter > 46 && counter < 80;

			if (want_aux == is_aux()) {
				// relay is consistent with signal
				rc.until_flip = 0;
				// Clear fault flag, allow the next switch to AUX.
				// (There shouldn't be a situation where AUX and
				// aux_fault are both on; so, the signal must be
				// main here.)
				aux_fault(FALSE);

			} else if (!rc.until_flip) {
				// else initiate flip
				// unless fault flag is raised
				if (!floppy.aux_fault) {
					rc.until_flip = 5;
				}

			} else if (!startup_delay && !--rc.until_flip) {
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
	// ADCL must be read first
	uint16_t v = ADCL;
	// "ADCH << 8" without an intermediatery int space just overflows?
	uint16_t vh = ADCH;
	v += vh << 8;
	// disable ADC
	ADCSRA = 0;

	if (is_aux()) {
		// else ran ADC on main battery, ignore

		if (v < 100) { // ~6.9V
			// Battery unavailable, can't wait for more samples.
			// This block should be unnecessary with the PCINT,
			// but having it for an extra assurance.
			set_relay(FALSE);
			aux_fault(TRUE);

		} else {
			if (!batt.empty_v) {
				// Ok, the next bit would be this simple if there
				// just was enough space (> 100 bytes) for 16-bit operations:
				//
				// batt.empty_v = floppy.border_volt * (v / floppy.border_volt);
				//
				// But, as it is, that looks like this now:
				//
				/*
				for (uint8_t cells = 8; batt.empty_v > v; --cells) {
					batt.empty_v = cells * floppy.border_volt;
				}
				*/

			} else if (v < batt.empty_v) {

				if (!batt.until_fallback) {
					// initialize fallback countdown
					batt.until_fallback = 3;

				} else if (!--batt.until_fallback) {
					// fallback to main battery
					set_relay(FALSE);
					aux_fault(TRUE);
					// ATT: don't schedule ADC
					return;
				}

			} else {
				// reset fallback counter
				batt.until_fallback = 0;
			}

			// repeat infinitely
			schedule_adc();
		}
	}
}

/*
 * Use watchdog to check AUX battery voltage on regular intervals.
 */
ISR (WDT_vect) {
	// basically a switch to watchdog mode..
	if (startup_delay) {
		--startup_delay;

	} else if (batt.adc_skips) {
		--batt.adc_skips;

	} else if (is_aux()) {
		// enable ADC and ADC interrupt, conversion will
		// start automatically on noise reduction sleep
		ADCSRA |= _BV(ADEN) | _BV(ADIE);

	} else {
		// nothing to do for watchdog (no need to monitor
		// main battery voltage)
		WDTCR &= ~WDTIE;
	}
}

ISR (PCINT0_vect) {
	// no battery power and relay is AUX -> AUX fault
	if (bit_is_clear(PINB, PIN_ADC) && is_aux()) {
		set_relay(FALSE);
		aux_fault(TRUE);
	}
}
