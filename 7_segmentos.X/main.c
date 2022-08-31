/*
 * File:   main.c
 * Author: Cristobal
 *
 * Created on 12 de abril de 2021, 14:54
 */

#include <xc.h>
#include "configuracion.h"

char display[10] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x67};

int i, j;

void main(void) {
    TRISD = 0x00;
    TRISAbits.RA0 = 0;
    TRISAbits.RA1 = 0;
    while(1){   
        for(i = 0; i < 11; i++){
            if(i == 10){
                j++;
                i = 0;
            }
            if(j == 10){
                j = 0;
            }
            LATAbits.LA0 = 1;
            LATD = display[i];
            __delay_ms(50);
            LATAbits.LA0 = 0;
            LATAbits.LA1 = 1;
            LATD = display[j];
            __delay_ms(50);
            LATAbits.LA1 = 0;
             
        }
    }
    return;
}