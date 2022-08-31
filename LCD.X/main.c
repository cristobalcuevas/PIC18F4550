/*
 * File:   main.c
 * Author: Cristobal
 *
 * Created on 28 de abril de 2021, 03:30
 */

#include <xc.h>
#include "configuracion.h"
#include "lcd_libreria.h"

void main(void) {
    TRISDbits.RD0 = 0;
    lcd_Init();
    lcd_XY(1,8);
    lcd_Caracter('W');
    lcd_XY(1,0);
    lcd_Caracter('e');
    lcd_XY(0,0);
    lcd_Cadena("Hola mundo");
    while(1){
    }
}