#include <avr/io.h>
#include <util/delay.h>
#include <string.h>

#include "main.h"

// Fuse
// L: 0xE2 H: 0xDA E: 0xF8
// Freq_osc: 16MHz
// Freq_cpu: 8MHz
// avrdude -c avrispmkii -p m328pb -U lfuse:w:0xe2:m -U hfuse:w:0xda:m -U efuse:w:0xf8:m
// avr-gcc -Os -DF_CPU=8000000UL -mmcu=atmega328pb -c -o digitensk.o digitensk.c
// avr-gcc -mmcu=atmega328pb digitensk.o -o digitensk
// avr-objcopy -O ihex -R .eeprom digitensk digitensk.hex
// avrdude -c avrispmkii -p m328pb -U flash:w:digitensk.hex:i

void init_io() {

	// PORTB
	// PB0 : External CS
	// PB1 : PLL Lock Indicator
	// PB2 - PB5 : SPI PLL chip
	// PB6 - PB7 : XTAL Osc
	PORTB = 0x0;
	PORTB |= _BV(PB0);
	PORTB |= _BV(PB2);
	DDRB |= _BV(PB0);
	DDRB |= _BV(PB2);
	DDRB |= _BV(PB3);
	DDRB |= _BV(PB5);

	// PORTC
	// PC0 - PC4 : Input frequency selector
	// PC5 : Output Disable RF PSU
	// PC6 : RESET Input
	PORTC = 0x0;

	// PORTD
	// PD0 - PD1 : UART
	// PD2 : Mixer 1 Enable
	// PD3 : Mixer 1 Doubler
	// PD4 : Mixer 2 Enable
	// PD5 : Mixer 2 Doubler
	PORTD = 0x0;
	DDRD |= _BV(PD2);
	DDRD |= _BV(PD3);
	DDRD |= _BV(PD4);
	DDRD |= _BV(PD5);

	// PORTD
	// PE0 : LED1
	// PE1 : LED2
	// PE2 : LED3
	// PE3 : LED4
	PORTE = 0x0;
	DDRE |= _BV(PE0);
	DDRE |= _BV(PE1);
	DDRE |= _BV(PE2);
	DDRE |= _BV(PE3);
}

void init_uart() {
	// UBRRn = Fosc / (16* baud) - 1
	// Baud = 38400
	UBRR0H = 0x00;
	UBRR0L = 0x0C;

	UCSR0B |= (1 << TXEN0);
}

void init_spi() {
	SPCR0 = (1 << SPE) | (1 << MSTR);
}

void activate_uart_rx(uint8_t activate) {
	if( !activate )
		UCSR0B &= ~(1 << RXEN0);
	else
		UCSR0B |= (1 << RXEN0);
}

// Send one char to uart
void uart_putc(char data) {
    while(!(UCSR0A & (1 << UDRE0)));
    UDR0 = data;
}

// Read one char to uart
uint8_t uart_readc(uint8_t * val) {
	if(UCSR0A & (1<<RXC0)) {
		*val = UDR0;
		return 1;
	}
	return 0;
}

// Sending a string over uart (no safety !)
void send_str(char sText[]) {
	uint8_t len = strlen(sText);
	for(uint8_t i = 0; i < len; i++) {
		uart_putc(sText[i]);
	}
}

// Get PLL Lock
uint8_t get_lock() {
	if ((PINB & (1 << PB1))) {
		return 1;
	}
	return 0;
}

// SPI Writing register
void write_reg(uint32_t data){
	// ~CS
	PORTB &= ~_BV(PB2);

	SPDR0 = (uint8_t)((data >> 16) & 0xFF);

	while(!(SPSR0 & (1 << SPIF)));

	SPDR0 = (data >> 8) & 0xFF;

	while(!(SPSR0 & (1 << SPIF)));

	SPDR0 = (data) & 0xFF;

	while(!(SPSR0 & (1 << SPIF)));

	PORTB |= _BV(PB2);
}

// Drive LEDS
void led_status(uint8_t leds) {
	PORTE = 0x0F & leds;
}

// Set PLL parameters
void set_freq(Freq_Set set, uint8_t first) {

}

int main() {
	init_io();
	init_uart();
	init_spi();

	while (1) {
		led_status(15);
	}
}