/*
 * file :  LCD_Char_User.c
 * brief : send caracter
 * author : hugo descoubes
 */

#include <LCDUser.h>

void LCD_write_Data(char data);
void LCD_Write_Register(char DR_or_IR);
	
/*
 * send caracter
 */
void LCD_Char_User(char data){
  
    LCD_write_Data(data);

    LCD_Write_Register(REG_DR_USER);

    DelayUser_2ms();
}