/*
 * file :  LCD_Init_User.c
 * brief : lcd initialisation 
 * author : hugo descoubes
 */

#include <LCDUser.h>

/* 
 * lcd initialisation 
 */
void LCD_Init_User(void){
    /* cf. pdf schematic board3 
     * cf. pdf datasheet HD44780U - p24, p25, p45 
     */

    /* gpio configuration */
    DATA_OUTPUTPORT_LCD_USER = 0x00;
    RS_OUTPUTPIN_LCD_USER = 0;
    E_OUTPUTPIN_LCD_USER = 0;

    /* initialisation */
    DelayUser_15ms();			
    LCD_Command_User(0b00110000);
    DelayUser_5ms();			
    LCD_Command_User(0b00110000);
    DelayUser_5ms();				
    LCD_Command_User(0b00110000);

    /* configuration */
    LCD_Command_User(0b00111000);    // 8bits interface, 2 lines, 5x8 dots
    LCD_Command_User(0b00001100);    // display on
    LCD_Command_User(0b00000001);    // clear display                                                         // cursor display shift :   0b0001 0000 + options (S/C=8, R/L=4)
    LCD_Command_User(0b00000110);    // increment, no display shift
}
