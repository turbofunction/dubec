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
*/

// abundance of RAM, no need to obfuscate code with bit fields
#define TRUE 1
#define FALSE 0

// as a benefit from a single output port, using the output array as identifiers
#define PB_RELAY PORTB0

#define PIN_RC PINB1

#define EEPROM_VERSION 0b10101010 // hopefully less collisions...

uint8_t EEMEM ee_ver;

typedef struct {
	// 10-bit ADC value for 4.2V equivalent
	uint16_t volt_1s;
	// set to TRUE if get low ADC on AUX battery
	uint8_t aux_fault;
} eeprom01_t;

eeprom01_t EEMEM ee_floppy;

// theoretical division for 10 bit ADC is 35.224V = 5V = 0x3ff = 1024,
// thus 4.2V = 1024 * 4.2 / 35.224 = 122
eeprom01_t floppy = { 122, FALSE };

volatile uint8_t eeprom_dirty = FALSE;

// how many watchdog cycles to wait for capacitor to charge
volatile uint8_t startup_delay = 4;

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
static uint8_t rc_high_int(void);
static void start_timer(void);
static uint8_t is_timer_running(void);
static void schedule_adc(void);
static uint8_t is_adc_pending(void);
static void set_relay(uint8_t port);
static void aux_fault(uint8_t is_true);

int main(void) {
	/*
	 * Port configuration:
	 *
	 * PB0 (MOSI): relay & AUX LED output
	 * PB1 (PCINT1, INT0, MISO): RC signal digital input (external pull-up)
	 * PB2 (SCK): floating pull-up input
	 * PB3 (NC): floating pull-up input
	 * PB4 (ADC2, PCINT4): battery voltage divider input (external pull-down)
	 * PB5 (RESET): floating pull-up input
	 *
	 * Note: normally floating pins PB2 and PB5 are connected to ISP.
	 *
	 * Default fuses are fine.
	 */

	// TODO initial delay for bridge capacitor to charge?

	// configure relay as the sole output
	DDRB = _BV(DDB0);

	// active internal pull-ups (but don't high the real outputs, ie. relay)
	PORTB = _BV(PORTB5) | _BV(PORTB3) | _BV(PORTB2);

	// disable digital input on battery ADC and relay
	DIDR0 = _BV(ADC2D) | _BV(AIN0D);

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
	// Note A: could use PCINT on RC signal as well, but as decided now
	// to just idle during lows, can use synchoronous INT0 high.
	//
	// Note B: disconnect fallback could be done more reliably in hardware,
	// but this minor case hardly warrants the extra components. Also,
	// the interrupt needn't to be configured yet (only after switch to AUX)
	// but to keep things simple.
	PCMSK = _BV(PCINT4);

	// enable timer counter overflow interrupt
	TIMSK0 = _BV(TOIE0);

	// enable watchdog interrupt to countdown startup_delay
	WDTCR |= WDTIE;
	// watchdog enable change
	WDTCR = WDCE;
	// Configure watchdog prescaler to 0.5s.
	// NOTE: keep it simple as we have only a four clock window.
	WDTCR = WDTO_500MS;

	// global interrupt enable, SREG |= SREG_I
	sei();

	for (;;) {
		// Configure sleep according to state. Also, write fresh eeprom
		// before first sleep.

		if (is_timer_running()) {
			// idle when timing high RC
			MCUCR = _BV(SE) | (MCUCR & ~(_BV(SM0) | _BV(SM1)));

		} else if (is_adc_pending()) {
			// ADC conversion will start automatically with sleep.
			// Note that this will inhibit high signal tracking
			// on INT0, but the conversion should be well finished
			// before the next rise.
			MCUCR = _BV(SE) | (MCUCR & ~_BV(SM1)) | _BV(SM0);

		} else if (eeprom_dirty) {
			// will miss a few signals, but so not...
			save_eeprom();
			// check state again before next sleep
			MCUCR &= ~_BV(SE);

		} else if (rc_high_int()) {
			// ~18ms wait period on RC low, sleep or not? If we just idle
			// for now to avoid risks.. (Thus, configured to use synchronous
			// INT0 on RC instead of async PCINT; easier interrupt handling.)
			MCUCR = _BV(SE) | (MCUCR & ~(_BV(SM0) | _BV(SM1)));

		} else {
			// Set sleep mode to power down, low RC signal and watchdog
			// interrupt will wake up.
			MCUCR = _BV(SE) | (MCUCR & ~_BV(SM0)) | _BV(SM1);
		}

		// wdt_reset();
		sleep_cpu();
	}
}

void load_eeprom(void) {
	uint8_t ee_ver = eeprom_read_byte(&ee_ver);
	switch (ee_ver) {
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

/* Returns true if waiting for high RC signal. */
uint8_t rc_high_int(void) {
	return MCUCR & (_BV(ISC01) | _BV(ISC00));
}

void start_timer(void) {
	// zero counter
	TCNT0 = 0;
	// set timer clock source 8MHz/256 == 32kHz = 2.2ms/69
	TCCR0B = _BV(CS02);
}

/* Function for clarity. */
uint8_t is_timer_running(void) {
	return TCCR0B;
}

/* Using watchdog interrupt to trigger ADC. */
void schedule_adc(void) {
	// enable watchdog interrupt
	WDTCR |= WDTIE;
}

/* Function for clarity. */
uint8_t is_adc_pending(void) {
	return ADCSRA;
}

void set_relay(uint8_t aux) {
	if (aux != (PORTB & PB_RELAY)) {
		if (aux) {
			PORTB |= PB_RELAY;
		} else {
			PORTB &= ~PB_RELAY;
		}
		batt.empty_v = 0;
		batt.until_fallback = 0;
		batt.adc_skips = 1;
		rc.until_flip = 0;
		if (aux) {
			schedule_adc();
		}
	}
}

void aux_fault(uint8_t flag) {
	if (floppy.aux_fault != flag) {
		floppy.aux_fault = flag;
		eeprom_dirty = TRUE;
	}
}

/** RC ("PWM") signal handler */
ISR (INT0_vect) {
	// stop timer in any case
	TCCR0B = 0;

	if (PINB & _BV(PIN_RC)) {
		// line is high, next interrupt on low
		MCUCR &= ~(_BV(ISC01) | _BV(ISC00));
		// start timer
		start_timer();

	} else {
		// schedule next interrupt on rising edge
		MCUCR |= _BV(ISC01) | _BV(ISC00);

		if (!TCNT0) {
			// couldn't read a proper signal, ignore
			// (too long or a state problem)
			rc.until_flip = 0;

		} else {
			// if RC signal high for ]56..92[ 37.5kHz == [1512..2484ms], want AUX
			// TODO calibrate (runtime?)
			uint8_t want_aux = TCNT0 > 46 && TCNT0 < 80;

			if (bit_is_set(PORTB, PB_RELAY) == want_aux) {
				// relay is consistent with signal
				rc.until_flip = 0;
				// Clear fault flag, allow the next switch to AUX.
				// (There shouldn't be a situation where AUX and
				// aux_fault are both on; so, the signal must be
				// main here.)
				aux_fault(FALSE);

			} else if (!rc.until_flip) {
				// else initiate flip (unless there's fault flag)
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
	uint16_t vh = ADCH;
	// "ADCH << 8" without an intermediatery int space just overflows?
	v += vh << 8;
	// disable ADC
	ADCSRA = 0;

	if (bit_is_set(PORTB, PB_RELAY)) {
		// else ran ADC on main battery, ignore

		if (v < floppy.volt_1s) {
			// Battery unavailable, can't wait for more samples.
			// This block should be unnecessary with the PCINT,
			// but having it for an extra assurance.
			set_relay(FALSE);
			aux_fault(TRUE);

		} else {
			if (!batt.empty_v) {
				// TODO calculate
				batt.empty_v = 1;

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

	} else if (PORTB & PB_RELAY) {
		// enable ADC and ADC interrupt, conversion will
		// start automatically on noise reduction sleep
		ADCSRA |= _BV(ADEN) | _BV(ADIE);

	} else {
		// nothing to do for watchdog (no need to monitor
		// main battery voltage)
		WDTCR &= ~WDTIE;
	}
}
