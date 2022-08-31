/* 
 * File: configuracion.c
 * Author: Cristobal
 * Comments:
 * Revision history: 
 */

#include "interrupcion_libreria.h"
#include "lcd_libreria.h"
#include "configuracion.h"

uint8_t x = 0;

void INT_Init(void){
    TRISBbits.RB0 = 1; // Configurar RB0 como entrada
    INTCONbits.INT0E = 1; // Habilitar INT0
    INTCONbits.INT0IF = 0; // Flag INT0 en 0
    INTCON2bits.INTEDG0 = 0; // Habilita interrupciones en flanco de bajada (1 a 0) para INT0
    RCONbits.IPEN = 1; // Habilitar prioridades
    INTCONbits.GIEH = 1; // Habilita prioridades altas
    INTCONbits.GIEL = 1; // Habilita prioridades bajas
}

void __interrupt(high_priority) INT0_ALTA(void){
    x++;
    INTCONbits.INT0IF = 0; // Flag INT0 en 0
    
}
void __interrupt(low_priority) INT1_TMR0(void){
    TMR0L = 60; // 0.5 s
    LATDbits.LATD0 = ~LATDbits.LATD0;
    INTCONbits.TMR0IF = 0; // LImpiar flag del timer 0
}