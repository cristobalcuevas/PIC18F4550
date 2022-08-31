/* 
 * File: pwm_libreria.c
 * Author: Cristobal
 * Comments:
 * Revision history: 
 */

#include "pwm_libreria.h"
#include "configuracion.h"

uint16_t duty = 1;

void pwm_Init(void){
    PR2 = 12; // Para periodo pwm de 40uS
    CCPR1L = duty>>2; // 25 que es la mitad del duty cycle
    CCP1CONbits.DC1B = duty&0x03;
    TRISCbits.RC2 = 0; // CCP1
    T2CONbits.T2CKPS = 0b10; // Prescaler de 16
    T2CONbits.TMR2ON = 1; // Timer 2 ON
    CCP1CONbits.CCP1M = 0b1100; // Activar modo PWM
}