/*
 * File:   main.c
 * Author: Cristobal
 *
 * Created on 1 de mayo de 2021, 0:56
 */

#include <xc.h>
#include <stdio.h>
#include "configuracion.h"
#include "ADC_libreria.h"
#include "lcd_libreria.h"
#include "pwm_libreria.h"

uint16_t valor_adc;
float resolucion, vin;
char dato[10];

void main(void) {
    ADC_Init();
    lcd_Init();
    pwm_Init();
    TRISD = 0x00;
    TRISC = 0x00;
    float pwm_adc = 50.0/1024;
    while(1){
        valor_adc = ADC_read(0)*pwm_adc;
        if(valor_adc > 50){
            valor_adc = 49;
        }
        if(valor_adc <= 0){
            valor_adc = 1;
        }
        CCPR1L = valor_adc>>2; // Corrimiento
        CCP1CONbits.DC1B = valor_adc&0x03; // se queda con 2 bits
    }
    return;
}
