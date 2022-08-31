/* 
 * File: interrupcion_libreria.h
 * Author: Cristobal
 * Comments:
 * Revision history: 
 */

#ifndef INTERRUPCION_LIBRERIA_H
#define	INTERRUPCION_LIBRERIA_H

#include <xc.h>

void INT_Init(void);

void __interrupt() INT0_ISR(void);

#endif	/* INTERRUPCION_LIBRERIA_H */

