/*
 * File:   main.c
 * Author: Cristobal
 *
 * Created on 01 de abril de 2021, 23:19
 */

#include <xc.h>
#include "configuracion.h"
#include "EUSART_libreria.h"

char valor = 0;

void main(void) {
    EUSART_Init(BAUD_9600); // 9600 baudios
    TRISDbits.RD0 = 0; // Salida
    TRISDbits.RD1 = 0; // Salida
    while(1){
        valor = EUSART_RX();
        switch(valor){
            case '1':
                LATDbits.LATD0 = 1;
                break;
            case '2':
                LATDbits.LATD0 = 0;
                break;
            default:
                LATDbits.LATD1 = 1;
                break;
        }
        EUSART_TX(valor);
        __delay_ms(100);
    }
    return;
}
