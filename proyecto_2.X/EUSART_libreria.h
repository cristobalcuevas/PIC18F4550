/* 
 * File: EUSART_libreria.h
 * Author: Cristobal
 * Comments:
 * Revision history: 
 */

#ifndef EUSART_LIBRERIA_H
#define	EUSART_LIBRERIA_H

#include <xc.h>
#include "configuracion.h"

#define BAUD_9600 31

void EUSART_Init(uint8_t baud);

void EUSART_TX(char dato);
char EUSART_RX(void);
void EUSART_Cadena(char *data);

#endif	/* EUSART_LIBRERIA_H */

