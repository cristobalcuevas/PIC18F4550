/* 
 * File: EUSART_libreria.c
 * Author: Cristobal
 * Comments:
 * Revision history: 
 */

#include "EUSART_libreria.h"

void EUSART_Init(uint8_t baud){
    SPBRG = baud; // Para obtener 9600 baudios
    BAUDCONbits.BRG16 = 0; // Paras usar un dolo registro
    TXSTAbits.BRGH = 0; // En modo low speed
    TXSTAbits.SYNC = 0; // Modo as�ncrono
    RCSTAbits.SPEN = 1; // Habilitar puerto serial (TX y RX)
    /* TRANSMISI�N */
    TXSTAbits.TXEN = 1; // Habilitar transmisi�n
    TXSTAbits.TX9 = 0; // Usar 8 bits transmisi�n
    /* RECEPCI�N */
    RCSTAbits.CREN = 1; // Habilitar recepci�n
    RCSTAbits.RX9 = 0; // Usar 8 bits recepci�n
}

void EUSART_TX(char dato){
    while(!TXSTAbits.TRMT);
    TXREG = dato;
}
char EUSART_RX(void){
    return RCREG;
}
void EUSART_Cadena(char *data){
    while(*data != '\0'){
        EUSART_TX(*data);
        data++;
    }
}