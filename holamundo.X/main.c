/*
 * File:   holamundo.c
 * Author: Cristobal
 *
 * Created on 4 de abril de 2021, 15:19
 */

#include <xc.h>
#include "configuracion.h"

void main(void) {
    TRISAbits.RA0 = 0; // Solo RA0 es salida
    TRISBbits.RB0 = 0; // Solo RB0 es salida
    TRISCbits.RC0 = 0; // Solo RC0 es salida
    TRISDbits.RD0 = 0; // Solo RD0 es salida
    TRISEbits.RE0 = 0; // Solo RE0 es salida
    while(1){
        LATAbits.LATA0 = ~LATAbits.LATA0;
        LATBbits.LATB0 = ~LATBbits.LATB0;
        LATCbits.LATC0 = ~LATCbits.LATC0;
        LATDbits.LATD0 = ~LATDbits.LATD0;
        LATEbits.LATE0 = ~LATEbits.LATE0;
        __delay_ms(100);
    }
    return;
}
