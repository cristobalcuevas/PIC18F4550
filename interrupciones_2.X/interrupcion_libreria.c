/* 
 * File: configuracion.c
 * Author: Cristobal
 * Comments:
 * Revision history: 
 */

#include "interrupcion_libreria.h"

void INT_Init(void){
    INTCON3bits.INT1IE = 1; // Habilitar interrupcion 1
    INTCON3bits.INT2IE = 1; // Habilitar interrupcion 2
    
    INTCON3bits.INT1IF = 0; // Flag interrupcion 1 en 0
    INTCON3bits.INT2IF = 0; // Flag interrupcion 2 en 0
    
    INTCON3bits.INT1IP = 1; // Prioridad alta para INT1
    INTCON3bits.INT2IP = 0; // Prioridad baja para INT2
    
    INTCON2bits.INTEDG0 = 0; // Habilita interrupciones en flanco de bajada (1 a 0)
    INTCON2bits.INTEDG1 = 0; // Habilita interrupciones en flanco de bajada (1 a 0))
    
    RCONbits.IPEN = 1; // Habilitar prioridades
    INTCONbits.GIEH = 1; // Habilita prioridades altas
    INTCONbits.GIEL = 1; // Habilita prioridades bajas
}

void __interrupt(high_priority) INT_ALTA(void){
    if(INTCON3bits.INT1IF == 1){
        LATDbits.LATD0 = 0;
        INTCON3bits.INT1IF = 0;
    }
}
void __interrupt(low_priority) INT_BAJA(void){
    if(INTCON3bits.INT2IF == 1){
        LATDbits.LATD0 = 1;
        INTCON3bits.INT2IF = 0;
    }
}