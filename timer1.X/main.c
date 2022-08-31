/*
 * File:   main.c
 * Author: Cristobal
 *
 * Created on 29 de abril de 2021, 22:40
 */

#include <xc.h>
#include "configuracion.h"
#include "interrupcion_libreria.h"
#include "timer_libreria.h"
#include "lcd_libreria.h"


extern uint8_t sec, sec_d, min, min_d, hor, hor_d;

void main(void) {
    TRISDbits.RD0 = 0; // RD0 configurado como salida
    lcd_Init();
    Timer1_Init();
    INT_Init();
    lcd_XY(0,0);
    lcd_Cadena("Hora:");
    while(1){
        lcd_XY(1,0);
        lcd_Caracter('0'+hor_d);
        lcd_Caracter('0'+hor);
        lcd_Caracter(':');
        lcd_Caracter('0'+min_d);
        lcd_Caracter('0'+min);
        lcd_Caracter(':');
        lcd_Caracter('0'+sec_d);
        lcd_Caracter('0'+sec);
        //__delay_ms(100);
    }
}
