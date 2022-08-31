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
    EUSART_TX('C');
    EUSART_Cadena("Cristobal");
    while(1){
        /*valor = EUSART_RX();
        EUSART_TX(valor);
        __delay_ms(100);*/
    }
    return;
}
