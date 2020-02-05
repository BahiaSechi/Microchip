/*
 * file :  LCD_Write_Register.c
 * brief : driver function
 * processing gpio enable bit and display driver register selection bit
 * author : hugo descoubes
 */

#include <LCDUser.h>

/*
 * processing gpio enable bit and display driver register selection bit
 */
void LCD_Write_Register(char DR_or_IR){
    /* cf. pdf schematic board3 
     * cf. pdf datasheet HD44780U - p32, p52, p53, p58
     */
    
    RS_PIN_LCD_USER = DR_or_IR;
    {
        E_PIN_LCD_USER = 1;
        DelayUser_4us();      
        E_PIN_LCD_USER = 0;
    }
    RS_PIN_LCD_USER = 1;
}
