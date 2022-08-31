#include "EEPROM_libreria.h"
#include "configuracion.h"

void EEPROM_Write(char dir, char dato){
    EEADR = dir;
    EEDATA = dato;
    EECON1bits.EEPGD = 0; // Seleccionar memoria EEPROM
    EECON1bits.CFGS = 0; // Acceso a la memoria EEPROM
    EECON1bits.WREN = 1; // Habilitar escritura
    INTCONbits.GIE = 0; // Deshabilitar interrupciones
    EECON2 = 0x55; // REQUERIDO
    EECON2 = 0xAA; // REQUERIDO
    EECON1bits.WR = 1; // REQUERIDO -  Inicia EEPROM para escritura
    INTCONbits.GIE = 1; // Habilitar escritura
    EECON1bits.WREN = 0; // Deshabilitar escritura
}
char EEPROM_Read(char dir){
    EEADR = dir;
    EECON1bits.EEPGD = 0; // Seleccionar memoria EEPROM
    EECON1bits.CFGS = 0; // Acceso a la memoria EEPROM
    EECON1bits.RD = 1; // Inicia EEPROM para lectura
    return EEDATA;
}