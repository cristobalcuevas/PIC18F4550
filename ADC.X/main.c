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

uint16_t valor_adc;
float resolucion, vin;
char dato[10];

void main(void) {
    ADC_Init();
    lcd_Init();
    TRISD = 0x00;
    TRISC = 0x00;
    while(1){
        /********** AN0 **********/
        valor_adc = ADC_read(0);
        // Vin = Valor ADC * Resolución;
        resolucion = (5.0)/(1023.0); // float/int = float
        vin = valor_adc * resolucion;
        sprintf(dato,"V0: %.2f",vin);
        lcd_XY(0,0);
        lcd_Cadena(dato);
        __delay_ms(100);
        /********** AN1 **********/
        valor_adc = ADC_read(1);
        // Vin = Valor ADC * Resolución;
        resolucion = (5.0)/(1023.0); // float/int = float
        vin = valor_adc * resolucion;
        sprintf(dato,"V1: %.2f",vin);
        lcd_XY(1,0);
        lcd_Cadena(dato);
        __delay_ms(100);
    }
    return;
}
