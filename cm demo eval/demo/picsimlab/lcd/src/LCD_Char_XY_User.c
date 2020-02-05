/*
 * file :  LCD_Char_XY_User.c
 * brief : select cursor position and send caracter
 * author : hugo descoubes
 */

#include <LCDUser.h>

void LCD_Cursor_XY(unsigned char row, unsigned char col);

/*
 * select position and send caracter
 */
void LCD_Char_XY_User(unsigned char row, unsigned char col, char data){

    LCD_Cursor_XY(row, col);

    LCD_Char_User(data);
}