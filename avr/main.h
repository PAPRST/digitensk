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

Freq_Set set_array[16] = {
	{0x200960, 0x1, 0x12, 0x3, 0x34008984, 0x800025, 0x3420C386, 0x120000e7, 0x102d0428, 0x8087CC9, 0xC00CBA, 0x61300B, 0x1041C}
};