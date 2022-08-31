/*
 * File:   main.c
 * Author: Cristobal
 *
 * Created on 4 de abril de 2021, 16:16
 */

#include <xc.h>
#include "configuracion.h"

void main(void) {
    TRISBbits.RB0 = 1; // Entrada
    TRISBbits.RB1 = 1; // Entrada
    TRISDbits.RD0 = 0; // Salida
    TRISDbits.RD1 = 0; // Salida
    TRISDbits.RD2 = 0; // Salida
    while(1){
        if(PORTBbits.RB0 == 0 && PORTBbits.RB1 == 0){
            LATDbits.LATD0 = 1;
            LATDbits.LATD1 = 1;
            LATDbits.LATD2 = 1;
        }
        else if(PORTBbits.RB0 == 0 && PORTBbits.RB1 == 1){
            LATDbits.LATD0 = 0;
            LATDbits.LATD1 = 1;
            LATDbits.LATD2 = 0;
        }
        else if(PORTBbits.RB0 == 1 && PORTBbits.RB1 == 0){
            LATDbits.LATD0 = 1;
            LATDbits.LATD1 = 0;
            LATDbits.LATD2 = 0;
        }
        else{
            LATDbits.LATD0 = 0;
            LATDbits.LATD1 = 0;
            LATDbits.LATD2 = 1;
        }
    }
    return;
}
