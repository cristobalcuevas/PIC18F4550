/*
 * File:   main.c
 * Author: Cristobal
 *
 * Created on 7 de abril de 2021, 22:37
 */

#include <xc.h>
#include "configuracion.h"

void main(void) {
    TRISDbits.RD0 = 0; // Solo RD0 es salida
    while(1){
        
        LATDbits.LATD0 = ~LATDbits.LATD0;
        __delay_ms(1000);
        
    }
    
    return;
}
