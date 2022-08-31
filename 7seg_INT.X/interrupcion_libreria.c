/* 
 * File: configuracion.c
 * Author: Cristobal
 * Comments:
 * Revision history: 
 */

#include "interrupcion_libreria.h"
#include "configuracion.h"

uint8_t x = 0;

void INT_Init(void){
    TRISBbits.RB0 = 1; // Configurar RB0 como entrada
    TRISBbits.RB1 = 1; // Configurar RB1 como entrada
    
    INTCONbits.INT0E = 1; // Habilitar interrupcion 0
    INTCON3bits.INT1E = 1; // Habilitar interrupcion 1
    
    INTCONbits.INT0IF = 0; // Flag interrupcion 0 en 0
    INTCON3bits.INT1IF = 0; // Flag interrupcion 1 en 0
    
    INTCON3bits.INT1IP = 0; // Prioridad baja para INT1
    
    INTCON2bits.INTEDG0 = 0; // Habilita interrupciones en flanco de bajada (1 a 0)
    INTCON2bits.INTEDG1 = 0; // Habilita interrupciones en flanco de bajada (1 a 0))
    
    RCONbits.IPEN = 1; // Habilitar prioridades
    INTCONbits.GIEH = 1; // Habilita prioridades altas
    INTCONbits.GIEL = 1; // Habilita prioridades bajas
}

void __interrupt(high_priority) INT_ALTA(void){
    if(INTCONbits.INT0IF == 1){
        x =1;
        INTCONbits.INT0IF = 0;
    }
}
void __interrupt(low_priority) INT_BAJA(void){
    if(INTCON3bits.INT1IF == 1){
        x = 2;
        INTCON3bits.INT1IF = 0;
    }
}