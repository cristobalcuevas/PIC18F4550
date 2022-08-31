/*
 * File:   timers_libreria.c
 * Author: Cristobal
 *
 * Created on 26 de abril de 2021, 2:25
 */

#include <pic18f4550.h>
#include "timer_libreria.h"

void Timer1_Init(void){
    TMR1H = 0x80;
    TMR1L = 0x00;
    T1CON = 0x0F;
    PIE1bits.TMR1IE = 1; // Habilitar interrupcion timer1
    PIR1bits.TMR1IF = 0; // Limpiar bandera de timer1
    IPR1bits.TMR1IP = 1; // Prioridad alta
    
    
    
}