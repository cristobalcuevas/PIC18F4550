/*
 * File:   main.c
 * Author: Cristobal
 *
 * Created on 29 de abril de 2021, 12:45
 */


#include <xc.h>
#include "configuracion.h"
#include "interrupcion_libreria.h"
#include "timer_libreria.h"
#include "lcd_libreria.h"

extern uint8_t x;

void main(void) {
    TRISD = 0x00;
    INT_Init();
    lcd_Init();
    Timer0_Init();
    while(1){
        switch(x){
            case 1:
                lcd_XY(0,0);
                lcd_Cadena("Hola");
                T0CONbits.TMR0ON = 1; // Habilitar Timer 0 e inicializa la cuentas
                break;
            case 2:
                lcd_Comando(0x01);
                T0CONbits.TMR0ON = 0; // Deshabilitar Timer 0
                LATDbits.LATD0 = 0;
                x = 0;
            default:
                break;
        }
    }
    return;
}