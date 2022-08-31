/* 
 * File:   
 * Author: 
 * Comments:
 * Revision history:
 */

#ifndef ADC_LIBRERIA_H
#define	ADC_LIBRERIA_H

#include <xc.h>
#include <stdint.h>

void ADC_Init();
uint16_t ADC_read(char canal);

#endif	/* ADC_LIBRERIA_H */

