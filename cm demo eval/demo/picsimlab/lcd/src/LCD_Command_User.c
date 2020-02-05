/*
 * file :  LCD_Command_User.c
 * brief : send command
 * author : hugo descoubes
 */

#include <LCDUser.h>

void LCD_write_Data(char data_cmd);
void LCD_Write_Register(char DR_or_IR);

/*
 * send command
 */
void LCD_Command_User(char cmd){

    LCD_write_Data(cmd);

    LCD_Write_Register(REG_IR_USER);

    DelayUser_2ms();
}
