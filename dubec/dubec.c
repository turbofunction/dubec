/*
 * DUBEC_App.c
 *
 * Created: 10/3/2014 2:16:55 AM
 *  Author: FPV
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

// abundance of RAM, no need to obfuscate with bit fields
/*
#define TRUE 1
#define FALSE 0
*/

// as a benefit from a single output port, using the output array as identifiers
#define MAIN 0
#define AUX _BV(PORTB0)

#define EEPROM_VERSION 1

uint8_t EEMEM ee_ver;

typedef struct {
	uint16_t volt_8s;
} eeprom01_t;

eeprom01_t EEMEM ee_calib;

// theoretical division for 10 bit ADC is 35.224V = 5V = 0x3ff, thus 33.6V = 0x3ff * 33.6 / 35.224 = 976
eeprom01_t calib = { 976 };

typedef struct {
	// ADC value for when battery is considered empty
	volatile uint16_t empty_v;
	// countdown, set on first low voltage
	volatile uint8_t until_fallback;
} battery_t;

battery_t batt = { 0, 0 };

typedef struct {
	volatile uint8_t timer_counter;
	// countdown to relay flip
	volatile uint8_t until_flip;
} control_t;

control_t rc = { 0, 0 };

static void load_eeprom(void);
// static void save_eeprom(void);
static uint8_t is_sync_int(void);
static void start_timer(void);
static uint8_t is_timer_running(void);
static void schedule_adc(void);
static uint8_t is_adc_pending(void);
static void set_relay(uint8_t port);

int main(void) {
	/* 
	* Port connections:
	*/
	// PB0: relay & AUX LED output
	// PB1: RC signal input
	// PB4: battery ADC input

	// fuses:
	// CKSEL = 10 // 9MHz clock (default)
	// SUT = 00 // fast startup
	// CKDIV8 = 0 // start up with clock division of 8 (default)
	// WDTON = 1 // == unprogrammed

	// note: simulator ignores this if CKDIV8 fuse is set
	clock_prescale_set(clock_div_1);

	// configure PB0 as the only output
	DDRB = _BV(DDB0);

	// disable analog comparator
	// ACSR = _BV(ACD);

	// disable all digital inputs
	DIDR0 = 0x3f; // AIN0D | AIN1D | ADC1D | ADC3D | ADC2D | ADC0D;

	load_eeprom();

	// configure ADC to read PB4
	ADMUX |= _BV(MUX1);

	// enable external interrupt pin
	GIMSK |= _BV(INT0);
	// INT0 is triggered on low level by default, which is the correct mode now

	// enable sleep and go to power down
	MCUCR |= _BV(SE) | _BV(SM1);

	// set timer mode to Clear Timer on Compare (CTC)
	// TCCR0A |= _BV(WGM01);
	// enable timer counter overflow interrupt
	TIMSK0 |= _BV(TOIE0);

	/*
	OCR0A = 112; // number to count up to
	TCCR0A = 0x02; // Clear Timer on Compare Match (CTC) mode
	TIFR0 |= OCF0A; // clear interrupt flag
	TIMSK0 = OCIE0A; // TC0 compare match A interrupt enable
	// TCCR0B = CS0; // clock source CLK/1024, start timer
	*/

	sei(); // global interrupt enable

	// DEBUG
	// TCCR0B = _BV(CS02) | _BV(CS00);

	for (;;) {
		sleep_cpu();

		if (is_timer_running()) {
			// set sleep mode to idle
			MCUCR = MCUCR & ~(_BV(SM0) | _BV(SM1));
		} else if (is_adc_pending()) {
			// Set sleep mode to ADC noise reduction; conversion will
			// start automatically. Note that this will inhibit high signal
			// tracking on INT0, but the ADC should be quick enough.
			MCUCR = (MCUCR & ~_BV(SM1)) | _BV(SM0);
		} else if (is_sync_int()) {
			// tracking RC signal synchronously (high signal), can't sleep
			MCUCR = MCUCR & ~(_BV(SM0) | _BV(SM1));
		} else {
			// set sleep mode to power down, will wake up by a low RC signal
			MCUCR = (MCUCR & ~_BV(SM0)) | _BV(SM1);
		}
	}
}

void load_eeprom(void) {
	uint8_t ee_ver = eeprom_read_byte(&ee_ver);
	switch (ee_ver) {
		case EEPROM_VERSION:
			eeprom_read_block(&calib, &ee_calib, sizeof(eeprom01_t));
	}
}

/*
void save_eeprom(void) {
	eeprom_write_byte(&ee_ver, EEPROM_VERSION);
	eeprom_write_block(&calib, &ee_calib, sizeof(eeprom01_t));
}
*/

uint8_t is_sync_int(void) {
	return MCUCR & (_BV(ISC01) | _BV(ISC00));
}

void start_timer(void) {
	// maximum RC high duration (2250ms) == 19 * 1/8ms (== 8kHz == 8MHz / 1024)
	// TODO calibrate
	rc.timer_counter = 20;
	// interrupt immediately after one clock division
	TCNT0 = -1;
	// set timer clock source /1024
	TCCR0B = _BV(CS02) | _BV(CS00);
}

/* Function for clarity. */
uint8_t is_timer_running(void) {
	return TCCR0B;
}

// use watchdog to trigger ADC at 2Hz
void schedule_adc(void) {
	// set watchdog interrupt
	WDTCR |= WDTIE;
	wdt_enable(WDTO_500MS);
}

/* Function for clarity. */
uint8_t is_adc_pending(void) {
	return ADCSRA;
}

void set_relay(uint8_t port) {
	PORTB = port;
	batt.empty_v = 0;
	batt.until_fallback = 0;
	rc.until_flip = 0;
	if (port) { // == AUX
		schedule_adc();
	}
}

/** RC ("PWM") signal handler */
ISR (INT0_vect) {
	if (PORTB & _BV(PORTB1)) {
		// line is high, next interrupt on low
		MCUCR &= ~(_BV(ISC01) | _BV(ISC00));
		// start timer
		start_timer();
	} else {
		// line is low, stop timer
		TCCR0B = 0;
		// schedule next interrupt on rising edge
		MCUCR |= _BV(ISC01) | _BV(ISC00);
		if (!rc.timer_counter) {
			// invalid signal, exceeded 2250ms
			rc.until_flip = 0;
			return;
		}

		// if RC high signal over 1750ms, want AUX
		// TODO calibrate
		uint8_t want_aux = rc.timer_counter < 8;
		// reset to 1 so the interrupt handler will stop timer if triggered
		rc.timer_counter = 1;

		if ((PORTB & AUX) == want_aux) {
			// relay is consistent with signal
			rc.until_flip = 0;

		} else {
			// else initiate flip
			if (!rc.until_flip) {
				rc.until_flip = 5;
			} else if (!--rc.until_flip) {
				set_relay(want_aux ? AUX : MAIN);
			}
		}
	}
}

ISR (TIM0_OVF_vect) {
	if (!--rc.timer_counter) {
		// RC high time exceeded, stop timer
		TCCR0B = 0;
	} else {
		// forward counter to next division
		// TODO where does the division start?
		TCNT0 = -1;
	}
}

/*
 * Read battery voltage.
 */
ISR(ADC_vect) {
	// ADCL must be read first
	uint8_t v = ADCL;
	v += ADCH << 8;
	// disable ADC
	ADCSRA = 0;
	if (!(PORTB & AUX)) {
		// ran ADC on main battery, ignore
		return;
	}
	if (v < 50) {
		// battery unavailable, can't wait for more samples
		set_relay(MAIN);
		return;
	}
	if (!batt.empty_v) {
		// TODO calculate
		batt.empty_v = 1;
	} else if (v < batt.empty_v) {
		if (!batt.until_fallback) {
			// initialize fallback countdown
			batt.until_fallback = 3;
		} else if (!--batt.until_fallback) {
			// fallback to main battery
			set_relay(MAIN);
			return;
		}
	} else {
		// reset fallback counter
		batt.until_fallback = 0;
	}
	// repeat infinitely
	schedule_adc();
}

/*
 * Use watchdog to check AUX battery voltage on regular intervals.
 */
ISR (WDT_vect) {
	if (PORTB & AUX) {
		// start a conversion: enable ADC and ADC interrupt, conversion
		// will start automatically on noise reduction sleep
		ADCSRA |= _BV(ADEN) | _BV(ADIE);
	} else {
		// no need to monitor main battery
		wdt_disable();
	}
}
