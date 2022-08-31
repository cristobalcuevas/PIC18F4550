#include "lcd_libreria.h"
#include "configuracion.h"
/* Inicialización del LCD */
void lcd_Init(void){
    TRISD = 0x00;
    __delay_ms(20);
    lcd_Comando(0x30);
    __delay_ms(5);
    lcd_Comando(0x30);
    __delay_us(100);
    lcd_Comando(0x32); // 4 bits
    lcd_Comando(0x28); // 2 lineas de 5x8 cada caracter
    lcd_Comando(0x0C); // Solo encender display, no mostrar cursor
    lcd_Comando(0x01); // Limpiar lcd
    lcd_Comando(0x06); // Direccion y movimiento 
}

void lcd_Comando(char cmd){
    
    LCD_PORT &= 0x03;
    LCD_PORT |= (cmd&0xF0);
    selectorRegistro(0); // Modo comando
    LCD_PORT &= 0x03;
    LCD_PORT |= ((cmd<<4)&0xF0);
    selectorRegistro(0); // Modo comando
}
/* Posicionar en LCD */
void lcd_XY(int x, int y){
    if(x > 0){
        lcd_Comando(0xC0+y);
    }
    else{
        lcd_Comando(0x80+y);
    }
}
/* Escribir caracter */
void lcd_Caracter(char dat){
    LCD_PORT &= 0x03;
    LCD_PORT |= (dat&0xF0);
    selectorRegistro(1); // Modo caracter
    LCD_PORT &= 0x03;
    LCD_PORT |= ((dat<<4)&0xF0);
    selectorRegistro(1); // Modo caracter

}
/* Escribir palabra */
void lcd_Cadena(char *pal){
    while(*pal != '\0'){
        lcd_Caracter(*pal);
        pal++;
    }
}

void selectorRegistro(int rs){
    if(rs == 1){
        RS = 1; // Modo caracter
    }
    else {
        RS = 0; // Modo comando
    }
    __delay_ms(1);
    E = 1;
    __delay_ms(1);
    E = 0;
}