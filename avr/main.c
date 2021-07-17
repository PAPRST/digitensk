#include <avr/io.h>
#include <util/delay.h>
#include <string.h>

#include "main.h"

// Fuse
// L: 0xE2 H: 0xDA E: 0xF8
// Freq_osc: 16MHz
// Freq_cpu: 8MHz
// avrdude -c avrispmkii -p m328p -U lfuse:w:0xe2:m -U hfuse:w:0xda:m -U efuse:w:0xf8:m
// avr-gcc -Os -DF_CPU=8000000UL -mmcu=atmega328p -c -o main.o main.c
// avr-gcc -mmcu=atmega328p main.o -o main
// avr-objcopy -O ihex -R .eeprom main main.hex
// avrdude -c avrispmkii -p m328p -U flash:w:main.hex:i

void init_io() {

	// PORTB
	// PB0 : Input PLL MUX OUT
	// PB1 : Output PLL Chip Enable
	// PB2 - PB5 : SPI PLL chip
	// PB6 - PB7 : XTAL Osc
	PORTB = 0x0;
	PORTB &= ~_BV(PB1);
	PORTB |= _BV(PB2);
	PORTB |= _BV(PB3);
	PORTB |= _BV(PB5);
	DDRB |= _BV(PB1);
	DDRB |= _BV(PB2);
	DDRB |= _BV(PB3);
	DDRB |= _BV(PB5);

	// PORTC
	// PC0 - PC4 : Input frequency selector
	// PC5 : Output Disable RF PSU
	// PC6 : RESET Input
	PORTC = 0x1F; // Activate pull-up
	PORTC |= _BV(PC5);
	DDRC |= _BV(PC5);

	// PORTD
	// PD0 - PD1 : UART
	// PD2 : Output select clock reference
	PORTD = 0x0;
	DDRD |= _BV(PD2);
}

void init_uart() {
	// UBRRn = Fosc / (16* baud) - 1
	// Baud = 38400
	UBRR0H = 0x00;
	UBRR0L = 0x0C;

	UCSR0B |= (1 << TXEN0);
}

void activate_uart_rx(uint8_t activate) {
	if( !activate )
		UCSR0B &= ~(1 << RXEN0);
	else
		UCSR0B |= (1 << RXEN0);
}

void init_spi() {

	SPCR = (1 << SPE) | (1 << MSTR);
}

// Left contact put the frequency selection in manual mode
uint8_t control_mode() {
	return (PINC & 0x1);
}

// Read contact frequency selection
uint8_t frequency_select() {
	return ((PINC & 0x1E) >> 1);
}

// Send one char to uart
void uart_putc(char data)
{
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

// Power RF
void power_rf(uint8_t enable) {
	if(!enable)
		PORTC |= _BV(PC5);
	else
		PORTC &= ~_BV(PC5);
}

// Enable PLL
void enable_pll(uint8_t enable) {
	if(enable)
		PORTB |= _BV(PB1);
	else
		PORTB &= ~_BV(PB1);
}

// Select Reference
void select_ref(uint8_t ext) {
	if(ext)
		PORTD |= _BV(PD2);
	else
		PORTD &= ~_BV(PD2);
}

// SPI Writing register
void write_reg(uint32_t data){
	// ~CS
	PORTB &= ~_BV(PB2);

	SPDR = (uint8_t)((data >> 16) & 0xFF);

	while(!(SPSR & (1 << SPIF)));

	SPDR = (data >> 8) & 0xFF;

	while(!(SPSR & (1 << SPIF)));

	SPDR = (data) & 0xFF;

	while(!(SPSR & (1 << SPIF)));

	PORTB |= _BV(PB2);
}

// Set frequency
void set_freq(Freq_Set set) {
	write_reg(set.r_count_l);
	// Non mandatory delay
	_delay_ms(10);
	write_reg(set.ctrl_l);
	// Mandatory delay page 17 datasheet
	_delay_ms(30);
	write_reg(set.n_count_l);
}

// Get PLL Lock
uint8_t get_lock() {
	if ((PINB & (1 << PB0))) {
		return 1;
	}
	return 0;
}

int main() {

	init_io();
	init_uart();
	init_spi();
  
  	// FSM State
  	uint8_t mode = MANUAL;
  	uint8_t fsm_state = IDLE;
  	uint8_t freq_state = NONE;

  	/* Bug can't declare variable just under case statement !*/
  	uint8_t cur_mode = 255;


	/* Starting up sequence */
  	send_str("System Starting Up\r\n");

	power_rf(0);
	enable_pll(0);
	select_ref(0);

	send_str("Started RF PSU and Enabled PLL\r\n");	

	while(1) {
		switch(fsm_state) {
			case IDLE:
				cur_mode = control_mode();
				if(cur_mode != mode) {
					if(cur_mode == MANUAL) {
						activate_uart_rx(0);
						send_str("Manual mZode selected\r\n");
					} else {
						activate_uart_rx(1);
						send_str("Remote mode selected\r\n");
					}
					mode = cur_mode;
				}
				if(mode == MANUAL) {
					power_rf(1);
					enable_pll(1);
					uint8_t cur_freq = frequency_select();
					if (cur_freq != freq_state) {
						fsm_state = CHANGE_FREQ;
						freq_state = cur_freq;
					}
				} else if (mode == REMOTE) {
					uint8_t cmd = 0;
					uint8_t status = uart_readc(&cmd);
					if(status) {
						if(cmd >= 'A' && cmd <= 'P') {
							freq_state = cmd - 65;
							fsm_state = CHANGE_FREQ;
						} else if (cmd == 'R') {
							select_ref(0);
							send_str("Internal 10MHz reference\r\n");
						} else if (cmd == 'r') {
							select_ref(1);
							send_str("External 10MHz reference\r\n");
						} else if (cmd == 'Z') {
							enable_pll(0);
							_delay_ms(100);
							power_rf(0);
							send_str("Shutdown RF\r\n");
						} else if (cmd == 'z') {
							power_rf(1);
							_delay_ms(100);
							enable_pll(1);
							send_str("Power ON RF\r\n");
						} else if (cmd == '?') {
							if(get_lock()) {
								send_str("PLL is locked\r\n");
							} else {
								send_str("PLL is not locked\r\n");
							}
						}
					}
				}
			break;

			case CHANGE_FREQ:
				send_str("Changing Frequency, Please Wait\r\n");
				enable_pll(0);
				_delay_ms(500);
				enable_pll(1);
				_delay_ms(100);
				set_freq(set_array[freq_state]);
				send_str("Frequency Changed system ready\r\n");
				fsm_state = IDLE;
			break;
		}
	}
	return 0;
}
