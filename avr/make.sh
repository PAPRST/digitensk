avr-gcc -Os -DF_CPU=8000000UL -mmcu=atmega328pb -c -o digitensk.o digitensk.c
avr-gcc -mmcu=atmega328pb digitensk.o -o digitensk
avr-objcopy -O ihex -R .eeprom digitensk digitensk.hex
