/*
 * File:   main.c
 * Author: Cristobal
 *
 * Created on 12 de abril de 2021, 18:05
 */

#include <xc.h>
#include "configuracion.h"
#include "interrupcion_libreria.h"

char display[10] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x67};

int i, j;

extern int x;

void main(void) {
    INT_Init();
    TRISD = 0x00;
    TRISAbits.RA0 = 0;
    TRISAbits.RA1 = 0;
    while(1){
        if(x == 1){
            for(i = 0; i < 10; i++){
                LATAbits.LA0 = 1;
                LATD = display[i];
                __delay_ms(100);
                LATAbits.LA0 = 0;
            }
        }
        if(x == 2){
            for(j = 9; j >= 0; j--){
                LATAbits.LA1 = 1;
                LATD = display[j];
                __delay_ms(100);
                LATAbits.LA1 = 0;
            }
        }
    }
    return;
}