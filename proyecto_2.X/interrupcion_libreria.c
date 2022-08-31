/* 
 * File: interrupcion_libreria.c
 * Author: Cristobal
 * Comments:
 * Revision history: 
 */

#include "configuracion.h"
#include "interrupcion_libreria.h"

uint8_t x = 0;

void INT_Init(void){
    TRISBbits.RB0 = 1; // Configurar RB0 como entrada
    INTCONbits.INT0E = 1; // Habilitar INT0
    INTCONbits.INT0IF = 0; // Flag INT0 en 0
    /* INT0 siempre tiene prioridad alta */
    INTCON2bits.INTEDG0 = 0; // Habilita interrupciones en flanco de bajada (1 a 0) para INT0
    INTCONbits.GIE = 1; // Habilita interrupciones
}
void __interrupt() INT0_ISRs(void){
    x++;
    INTCONbits.INT0IF = 0;
}