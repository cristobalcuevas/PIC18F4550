/* 
 * File: configuracion.c
 * Author: Cristobal
 * Comments:
 * Revision history: 
 */

#include "interrupcion_libreria.h"

void INT_Init(void){
    TRISBbits.RB0 = 1; // Configurar RB0 como entrada
    TRISBbits.RB1 = 1; // Configurar RB1 como entrada
    
    INTCONbits.INT0E = 1; // Habilitar INT0
    INTCON3bits.INT1E = 1; // Habilitar INT1
    
    INTCONbits.INT0IF = 0; // Flag INT0 en 0
    INTCON3bits.INT1IF = 0; // Flag INT1 en 0
    
    //INT0 de INTCON siempre tiene prioridad alta
    INTCON3bits.INT1IP = 0; // Prioridad baja para INT1
    
    INTCON2bits.INTEDG0 = 0; // Habilita interrupciones en flanco de bajada (1 a 0) para INT0
    INTCON2bits.INTEDG1 = 0; // Habilita interrupciones en flanco de bajada (1 a 0)) para INT1
    
    RCONbits.IPEN = 1; // Habilitar prioridades
    INTCONbits.GIEH = 1; // Habilita prioridades altas
    INTCONbits.GIEL = 1; // Habilita prioridades bajas
}

void __interrupt(high_priority) INT_ALTA(void){
    if(INTCONbits.INT0IF == 1){
        LATDbits.LATD0 = ~LATDbits.LATD0;
        INTCONbits.INT0IF = 0;
    }
}
void __interrupt(low_priority) INT_BAJA(void){
    if(INTCON3bits.INT1IF == 1){
        LATDbits.LATD1 = ~LATDbits.LATD1;
        INTCON3bits.INT1IF = 0;
    }
}