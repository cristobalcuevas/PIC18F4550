/*
 * File:   main.c
 * Author: Cristobal
 *
 * Created on 26 de abril de 2021, 02:23
 */

#include <xc.h>
#include "configuracion.h"
#include "interrupcion_libreria.h"
#include "timer_libreria.h"

void main(void) {
    TRISDbits.RD0 = 0; // RD0 configurado como salida
    Timer0_Init();
    INT_Init();
    while(1){
        
    }
}
