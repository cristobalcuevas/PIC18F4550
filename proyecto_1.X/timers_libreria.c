/*
 * File:   timers_libreria.c
 * Author: Cristobal
 *
 * Created on 26 de abril de 2021, 2:25
 */

#include <pic18f4550.h>
#include "timer_libreria.h"

void Timer0_Init(void){
    T0CONbits.TMR0ON = 0; // Desabilitar Timer 0
    T0CONbits.T0CS = 0; // En modo temporizador
    T0CONbits.T08BIT = 1; // Timer 0 en 8 bits
    T0CONbits.PSA = 0; // Activar prescaler

    T0CONbits.T0PS2 = 1; // Prescaler a 256
    T0CONbits.T0PS1 = 1; // idem
    T0CONbits.T0PS0 = 1; // idem

    //TMR0 = 46003; // 1 s
    
    TMR0L = 60; // 0.5 s
    
    INTCONbits.TMR0IE = 1; // Habilitar interrupcion del timer 0
    INTCONbits.TMR0IF = 0; // LImpiar flag del timer 0
    
    INTCON2bits.TMR0IP = 0; // Prioridad baja
}