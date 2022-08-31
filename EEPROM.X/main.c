/*
 * File:   main.c
 * Author: Cristobal
 *
 * Created on 30 de abril de 2021, 23:06
 */

char dato;

#include <xc.h>
#include "configuracion.h"
#include "EEPROM_libreria.h"

void main(void) {
    TRISD = 0x00;
    EEPROM_Write(17, 'C');
    dato = EEPROM_Read(17);
    while(1){
        if(dato == 'C'){
            LATDbits.LATD0 = 1;
        }
    }
    return;
}
