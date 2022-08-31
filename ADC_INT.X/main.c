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
#include "interrupcion_libreria.h"

uint16_t valor_adc;
float resolucion, vin;
char dato[10];

void main(void) {
    TRISD = 0x00;
    TRISC = 0x00;
    ADC_Init();
    lcd_Init();
    INT_Init();
    ADC_Read(0);
    while(1){
       
    }
    return;
}
