// FSM possible state
#define IDLE			0
#define CHANGE_FREQ		1


// Frequency settings

typedef struct Freq_Set {
	uint32_t reg0;
	uint32_t reg1;
	uint32_t reg2;
	uint32_t reg3;
	uint32_t reg4;
	uint32_t reg5;
	uint32_t reg6;
	uint32_t reg7;
	uint32_t reg8;
	uint32_t reg9;
	uint32_t reg10;
	uint32_t reg11;
	uint32_t reg12;
} Freq_Set;

/*
 * 0: 3cm band 10-10.5GHz
 * 1: 8.4GHz space band
 */

Freq_Set set_array[16] = {
	{0x2003E0, 0x8000001, 0x12, 0x3, 0x34008984, 0x800025, 0x350203F6, 0x120000e7, 0x102d0428, 0x21217CC9, 0xC0323A, 0x61300B, 0x1041C}, // 5GHz | 2 output 5mA
	{0x2002A0, 0x8000001, 0x12, 0x3, 0x34008984, 0x800025, 0x3502E3F6, 0x120000e7, 0x102d0428, 0x21217CC9, 0xC0323A, 0x61300B, 0x1041C} // 3.4GHz | 2 output 5mA
};