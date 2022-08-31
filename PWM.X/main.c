/*
 * File:   main.c
 * Author: Cristobal
 *
 * Created on 29 de abril de 2021, 21:45
 */

#include <xc.h>
#include "configuracion.h"
#include "pwm_libreria.h"

extern uint16_t duty;

void main(void) {
    TRISBbits.RB0 = 1;
    TRISBbits.RB1 = 1;
    pwm_Init();
    while(1){
        if(PORTBbits.RB0 == 0){
            duty++;
        }
        if(PORTBbits.RB1 == 0){
            duty--;
        }
        if(duty > 50){
            duty = 49;
        }
        if(duty <= 0){
            duty = 1;
        }
        CCPR1L = duty>>2; // Corrimiento
        CCP1CONbits.DC1B = duty&0x03; // se queda con 2 bits
        __delay_ms(20); // delay para que se vea efecto
    }
    return;
}
