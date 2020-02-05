/*
 * file :  LCD_String_User.c
 * brief : send string
 * author : hugo descoubes
 */

#include <LCDUser.h>

/*
 * send string
 */
void LCD_String_User(char *str){
    char i=0;

    while(str[i] != '\0')
        LCD_Char_User(str[i++]);				
}
		