/*
 * file :  LCD_String_XY_User.c
 * brief : select cursor position and send string
 * author : hugo descoubes
 */

#include <LCDUser.h>

void LCD_Cursor_XY(unsigned char row, unsigned char col);

/*
 * select cursor position and send string
 */
void LCD_String_XY_User(unsigned char row, unsigned char col, char *str){

    LCD_Cursor_XY(row, col);

    LCD_String_User(str);
}