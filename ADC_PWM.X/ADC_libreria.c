#include "ADC_libreria.h"
#include "configuracion.h"

void ADC_Init(){
    
    TRISAbits.RA0 = 1; // RA0 como entrada
    TRISAbits.RA1 = 1; // RA1 como entrada
    ADCON1bits.PCFG = 0b1101; // RA0 y RA1 como pin analogo
    ADCON1bits.VCFG1 = 0; // Vref- = VSS
    ADCON1bits.VCFG0 = 0; // Vref+ = VDD
    ADCON0bits.CHS = 0b0000; // Usar canal AN0
    ADCON2bits.ADCS = 0b101; // Fosc/16 = 20Mhz/16 = 0.8us -> TAD
    ADCON2bits.ACQT = 0b010; // TAQmin = 2.45us -> 0.8us * 4 = 3.2us igual o superior a 2.45us
    ADCON2bits.ADFM = 1; // Justificacion derecha
    ADCON0bits.ADON = 1; // Encender ADC 
}
uint16_t ADC_read(char canal){
    if(canal >= 13){
        canal = 0;
    }
    ADCON0bits.CHS = canal;
    ADCON0bits.GO_DONE = 1;
    while(!ADCON0bits.GO_DONE); // Realizando conversión
    return ADRES; // ADRESH + ADRESL = ADRES
}