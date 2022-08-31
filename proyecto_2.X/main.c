/*
 * File:   main.c
 * Author: Cristobal
 *
 * Created on 02 de abril de 2021, 1:11
 */

#include <xc.h>
#include "configuracion.h"
#include "EUSART_libreria.h"
#include "interrupcion_libreria.h"
#include "pwm_libreria.h"

extern uint8_t x;
extern uint16_t duty;

void main(void) {
    TRISBbits.RB1 = 1; // Configurar RD0 como entrada
    TRISBbits.RB2 = 1; // Configurar RD1 como entrada
    INT_Init();
    while(1){
        switch(x){
            case 1:
                /* PWM */
                pwm_Init();
                if(PORTBbits.RB1 == 0){
                    duty++;
                }
                if(PORTBbits.RB2 == 0){
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
                /* EUSART */
                EUSART_Init(BAUD_9600); // 9600 baudios
                EUSART_Cadena("Cristobal");
                break; 
            case 2:
                /* PWM */
                CCP1CONbits.CCP1M = 0b0000; // Desactivar modo PWM
                /* EUSART */
                EUSART_Cadena("Que buen curso Wels, Adios");
                x = 0;
                break;
            default:
                break; 
        }
    }
    return;
}