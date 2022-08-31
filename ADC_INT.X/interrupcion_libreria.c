/* 
 * File: configuracion.c
 * Author: Cristobal
 * Comments:
 * Revision history: 
 */

#include "interrupcion_libreria.h"
#include "configuracion.h"
#include "ADC_libreria.h"

uint8_t x = 0;

void INT_Init(void){
    RCONbits.IPEN = 1; // Habilitar prioridades
    INTCONbits.GIEH = 1; // Habilita prioridades altas
    INTCONbits.GIEL = 1; // Habilita prioridades bajas
}

void __interrupt(high_priority) INT0_ADC_ALTA(void){
    LATD = ADRESH;
    LATC = ADRESL;
    ADCON0bits.GO_DONE = 1;
    PIR1bits.ADIF = 0;
}
void __interrupt(low_priority) INT0_ADC_BAJA(void){
}