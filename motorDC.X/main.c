/*
 * File:   main.c
 * Author: Cristobal
 *
 * Created on 4 de abril de 2021, 15:19
 */

#include <xc.h>
#include "configuracion.h"

void main(void) {
    TRISDbits.RD0 = 0; // Solo RA0 es salida
    TRISDbits.RD1 = 0; // Solo RB0 es salida
    TRISDbits.RD2 = 0; // Solo RC0 es salida
    LATDbits.LATD2 = 1;
    while(1){
        LATDbits.LATD0 = 1;
        LATDbits.LATD1 = 0;
        __delay_ms(500);
        LATDbits.LATD0 = 0;
        LATDbits.LATD1 = 1;
        __delay_ms(500);
        LATDbits.LATD0 = 1;
        LATDbits.LATD1 = 1;
        __delay_ms(500);
    }
    return;
}
