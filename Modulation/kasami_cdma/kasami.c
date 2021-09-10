#include <unistd.h>
#include <stdint.h>
#include <math.h>
#include <stdlib.h>
#include <stdio.h>

/* Standard Galois LFSR implementation */
void LFSR(uint8_t * seq, uint32_t N, uint32_t taps, uint32_t start_value) {
    uint32_t size;
    uint32_t lfsr;
    uint32_t i;
    size = (1<<N)-1;
    lfsr = start_value;

    for(i = 0; i < size; i++) {
        seq[i] = lfsr & 1;
        lfsr >>= 1 ;
        if(seq[i] == 1) lfsr ^= taps;
    }
}

uint8_t ** kasami_gen(uint32_t N, uint32_t taps_poly, uint32_t init_val) {
    uint32_t size = (1<<N)-1;
    /* a = LFSR base sequence */
    uint8_t * a = (uint8_t *)malloc(size);
    LFSR(a, N, taps_poly, init_val);

/*    printf("a: ");
    for(uint32_t i = 0; i < size; i++) {
        printf("%d ", a[i]);
    }
    printf("\n");*/

    /* q = Decimation factor */
    uint32_t q = (1<<(N/2))+1;
    /* m = length of ap (a prime) */
    uint32_t m = (size/q);
    /* ns = number of sequence excluding a */
    uint32_t ns = (1<<(N/2))-1;
    uint8_t ** ap_list = (uint8_t **)malloc(ns+1);
    for(uint32_t j = 0; j < ns; j++) {
        uint8_t * ap = (uint8_t *)malloc(m);
        for(uint32_t i = 0; i < m; i++) {
            ap[i] = a[i * q];
            printf("%d ", ap[i]);
        }
        printf("\n");
        ap_list[j] = ap;
        printf("ap_list[]: ");
        for(uint32_t i = 0; i < m; i++) {
            printf("%d ", ap_list[j][i]);
        }
        printf("\n");
    }

    printf("ap_list[0]: ");
    for(uint32_t i = 0; i < m; i++) {
        printf("%d ", ap_list[0][i]);
    }
    printf("\n");

    /* repeat ap */
    uint32_t ** b_list = (uint8_t **)malloc(ns+1);
    for(uint32_t j = 0; j < ns; j++) {
        uint8_t * ap = ap_list[j];
        uint8_t * b = (uint8_t *)malloc(size);

        for(uint32_t i = 0; i < size; i++) {
            uint32_t ind_mod = (i + j) % m;
            b[i] = ap[ind_mod];
        }

        b_list[j] = b;
    }

    /* XOR seq a and all b version */
    uint8_t ** kaz_codes = (uint8_t **)malloc(ns+1);
    for(uint32_t j = 0; j < ns; j++) {
        uint8_t * kaz = (uint8_t *)malloc(size);
        uint8_t * b = b_list[j];

        for(uint32_t i = 0; i < size; i++) {
            kaz[i] = b[i] ^ a[i];
        }
        kaz_codes[j] = kaz;
    }

    kaz_codes[ns] = a;
    return kaz_codes;
}

int main() {
    uint8_t ** kaz_codes;
    uint32_t N = 6;
    kaz_codes = kasami_gen(N, 9, 1);

    uint32_t size = (1<<N)-1;
    uint32_t ns = (1<<(N/2)); // total number of sequences

    for(uint32_t j = 0; j < ns; j++) {
        uint8_t * kaz = kaz_codes[j];

        printf("Seq %d : ", j);

        for(uint32_t i = 0; i < size; i++) {
            printf("%d ", kaz[i]);
        }

        printf("\n");
    }
}