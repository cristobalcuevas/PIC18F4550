/* 
 * File: configuracion.c
 * Author: Cristobal
 * Comments:
 * Revision history: 
 */

#include "interrupcion_libreria.h"
#include "configuracion.h"

uint8_t sec = 0, sec_d = 0, min = 0, min_d = 0, hor = 0, hor_d = 0;

void INT_Init(void){
    RCONbits.IPEN = 1; // Habilitar prioridades
    INTCONbits.GIEH = 1; // Habilita prioridades altas
    INTCONbits.GIEL = 1; // Habilita prioridades bajas
}

void __interrupt(high_priority) INT_TMR1_ALTA(void){
    TMR1H = 0x80;
    TMR1L = 0x00;
    sec++;
    if(sec == 10){
        sec_d++;
        sec = 0;
    }
    if(sec_d == 6){
        min++;
        sec_d = 0;
    }
    if(min == 10){
        min_d++;
        min = 0;
    }
    if(min_d == 6){
        hor++;
        min_d = 0;
    }
    if(hor == 10){
        hor_d++;
        hor = 0;
    }
    PIR1bits.TMR1IF = 0; // Limpiar bandera de timer1
}
void __interrupt(low_priority) INT_TMR1_BAJA(void){
}