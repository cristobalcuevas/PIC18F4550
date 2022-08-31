/*
 * File:   main.c
 * Author: Cristobal
 *
 * Created on 12 de abril de 2021, 03:25
 */

#include <xc.h>
#include "configuracion.h"
#include "interrupcion_libreria.h"

void main(void) {
    TRISBbits.RB1 = 1; // Configurar RB1 como entrada
    TRISBbits.RB2 = 1; // Configurar RB2 como entrada
    TRISDbits.RD0 = 0; // Configurar RB2 como entrada
     
    INT_Init();
    
    return;
}
