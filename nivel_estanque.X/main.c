/*
 * File:   main.c
 * Author: Cristobal
 *
 * Created on 25 de agosto de 2021, 13:49
 */

#include <xc.h>
#include "configuracion.h"

enum Estado {BOMBA_1, LLENADO, BOMBA_2} estado;

void main(void) {
    // RB0 y RB1 como salidas que corresponden a las bombas
    TRISBbits.RB0 = 0;
    TRISBbits.RB1 = 0;
    // RB2, RB3 y RB4 como salidas que corresponden a los leds de aviso
    TRISBbits.RB2 = 0;
    TRISBbits.RB3 = 0;
    TRISBbits.RB4 = 0;
    // RD3 como entrada que corresponde al interruptor de nivel
    TRISDbits.RD3 = 1;
    // Estado inicial
    estado = LLENADO;
    // Variable de estado
    uint8_t estadoActual = 0;
    while(1){
        switch(estado){
            case LLENADO:
                LATBbits.LATB0 = 0; // Bomba 1 apagada
                LATBbits.LATB1 = 0; // Bomba 2 apagada
                LATBbits.LATB2 = 0; // Led Bomba 1 apagado
                LATBbits.LATB3 = 0; // Led Bomba 1 apagado
                LATBbits.LATB4 = 1; // Led Llenado encendido
                if(PORTDbits.RD3 == 1 && estadoActual == 0){
                    estado = BOMBA_1;
                }
                else if(PORTDbits.RD3 == 1 && estadoActual == 1){
                    estado = BOMBA_2;
                }
                break;
            case BOMBA_1:
                LATBbits.LATB0 = 1; // Bomba 1 encendida
                LATBbits.LATB1 = 0; // Bomba 2 apagada
                LATBbits.LATB2 = 1; // Led Bomba 1 encendido
                LATBbits.LATB4 = 0; // Led Llenado apagado
                if(PORTDbits.RD3 == 0){
                    estado = LLENADO;
                    estadoActual = 1;
                }
                break;
            case BOMBA_2:
                LATBbits.LATB0 = 0; // Bomba 1 apagada
                LATBbits.LATB1 = 1; // Bomba 2 encendida
                LATBbits.LATB3 = 1; // Led Bomba 2 encendido
                LATBbits.LATB4 = 0; // Led Llenado apagado
                if(PORTDbits.RD3 == 0){
                    estado = LLENADO;
                    estadoActual = 0;
                }
                break;
            default:
                estado = LLENADO;
                break;
        }
    }
    return;
}