/* 
 * File: configuracion.c
 * Author: Cristobal
 * Comments:
 * Revision history: 
 */

#include "interrupcion_libreria.h"

int x = 0;

void INT_Init(void){
    RCONbits.IPEN = 1; // Habilitar prioridades
    INTCONbits.GIEH = 1; // Habilita prioridades altas
    INTCONbits.GIEL = 1; // Habilita prioridades bajas
}

void __interrupt(high_priority) INT_TMR0_ALTA(void){
    //TMR0L = 236; // 1 ms
    TMR0L = 0xb3; // 0.5 s
    TMR0H = 0xb3; // 0.5 s
    LATDbits.LATD0 = ~LATDbits.LATD0;
    INTCONbits.TMR0IF = 0; // LImpiar flag del timer 0
}
void __interrupt(low_priority) INT_TMR0_BAJA(void){
}