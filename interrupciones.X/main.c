/*
 * File:   main.c
 * Author: Cristobal
 *
 * Created on 4 de abril de 2021, 16:16
 */

#include <xc.h>
#include "configuracion.h"
#include "interrupcion_libreria.h"

void main(void) {
    INT_Init();
    TRISDbits.RD0 = 0; // Configurar RD0 como salida
    TRISDbits.RD1 = 0; // Configurar RD1 como salida
    return;
}
