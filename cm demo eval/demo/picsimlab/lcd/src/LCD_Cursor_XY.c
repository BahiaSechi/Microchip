/*
 * file :  LCD_Cursor_XY.c
 * brief : curcor position
 * author : hugo descoubes
 */

#include <LCDUser.h>

/*
 * curcor position
 */
void LCD_Cursor_XY(unsigned char row, unsigned char col){
    char i;

    LCD_Command_User(LCD_USER_COMMAND_HOME);

    /* limitation */
    if(row >= ROW_NB_USER)
        LCD_Command_User(LCD_USER_COMMAND_SECONDROW); 
    if(col > COLUMN_NB_USER)
        col = COLUMN_NB_USER + 1;

    /* cursor shift */
    for(i=1; i<col; i++)
        LCD_Command_User(LCD_USER_COMMAND_FWDSPACE);		
}	