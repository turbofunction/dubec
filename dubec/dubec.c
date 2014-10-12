/*
 * DUBEC_App.c
 *
 * Created: 10/3/2014 2:16:55 AM
 *  Author: FPV
 */ 

#include <avr/common.h>
#include <avr/io.h>
#include <avr/eeprom.h>
#include <avr/interrupt.h>
#include <avr/power.h>
#include <avr/sleep.h>
#include <avr/lock.h>
#include <inttypes.h>


#define EEPROM_VERSION 1

// #define start_adc() (ADCSRA |= (1<<ADSC))

uint8_t EEMEM ee_ver;

typedef struct {
	uint16_t volt_8s;
} eeprom01_t;

eeprom01_t EEMEM ee_calib;

// theoretical division for 10 bit ADC is 35.224V = 5V = 0x3ff, thus 33.6V = 0x3ff * 33.6 / 35.224 = 976
eeprom01_t calib = { 976 };

volatile uint8_t status = 0;

// battery voltage
volatile uint16_t batt_v = 0;

void load_eeprom(void) {
	uint8_t ee_ver = eeprom_read_byte(&ee_ver);
	switch (ee_ver) {
		case EEPROM_VERSION:
			eeprom_read_block(&calib, &ee_calib, sizeof(eeprom01_t));
	}
}

void save_eeprom(void) {
	eeprom_write_byte(&ee_ver, EEPROM_VERSION);
	eeprom_write_block(&calib, &ee_calib, sizeof(eeprom01_t));
}

int main(void) {
	// PB0: relay & AUX LED output
	// PB1: RC signal input
	// PB4: battery ADC input

	// fuses:
	// CKSEL = 10 // 9MHz clock (default)
	// SUT = 00 // fast startup
	// CKDIV8 = 0 // start up with clock division of 8 (default)

	// simulator ignores if CKDIV8 fuse is set
	clock_prescale_set(clock_div_1);

	// configure PB0 as the only output
	DDRB = _BV(DDB0);

	// disable analog comparator
	ACSR = _BV(ACD);

	// disable all digital inputs
	DIDR0 = 0x3f; // AIN0D | AIN1D | ADC1D | ADC3D | ADC2D | ADC0D;

	// configure ADC to read PB4
	ADMUX = (ADMUX & ~_BV(MUX0)) | _BV(MUX1);

	// 1) enable pull-ups (set disable to 0)
	// 2) enable sleep and set sleep mode ADC noise reduction (01)
	MCUCR = (MCUCR & ~(_BV(PUD) | _BV(SM1))) | (_BV(SE) | _BV(SM0));
	// interrupt on falling edge (there's pull-up on pin)
	MCUCR = (MCUCR & ~_BV(ISC00)) | _BV(ISC01);
	// enable external interrupt pin
	GIMSK |= _BV(INT0);

	// timer clock source /1024
	TCCR0B = _BV(CS02) | _BV(CS00);
	// timer counter to full
	TCNT0 = 0xff;
	// enable timer counter overflow interrupt
	TIMSK0 |= _BV(TOIE0);

	/*
	OCR0A = 112; // number to count up to
	TCCR0A = 0x02; // Clear Timer on Compare Match (CTC) mode
	TIFR0 |= OCF0A; // clear interrupt flag
	TIMSK0 = OCIE0A; // TC0 compare match A interrupt enable
	// TCCR0B = CS0; // clock source CLK/1024, start timer
	*/

	load_eeprom();

	sei(); // global interrupt enable

	// enable ADC and ADC interrupt, and start conversion
	ADCSRA |= _BV(ADEN) | _BV(ADIE) | _BV(ADSC);

	// start_adc();

	for (;;) {
		sleep_cpu();
	}
}

ISR (TIM0_OVF_vect) {
	/*
	static char toggle = 0;

	// toggle the LED on each interrupt
	if (toggle) {
		toggle = 0;
		PORTB |= PORTB0;
		// POD &= ~(1 << PD6);
	} else {
		toggle = 1;
		PORTB &= ~PORTB0;
		// PORTD |=  (1 << PD6);
	}
	*/
}

ISR(ADC_vect) {
	// ADCL must be read first
	uint8_t v = ADCL;
	batt_v += (ADCH << 8) + v;
}

ISR (INT0_vect) {
}
