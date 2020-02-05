/*
 * file :  LCDUser.h
 * brief : application lcd header file
 * author : hugo descoubes
 */

#ifndef   __LCD_USER_HEADER__
#define   __LCD_USER_HEADER__

	#include "portLCDUser.h"
	
    /* display parameters */
    #define   ROW_NB_USER       2 
    #define   COLUMN_NB_USER    16
    #define   REG_IR_USER       0       
    #define   REG_DR_USER       1 

    /* command set */
    #define	LCD_USER_COMMAND_CLEAR      0x01    // Clear screen and home cursor
    #define	LCD_USER_COMMAND_HOME       0x02    // Home cursor 
    #define	LCD_USER_COMMAND_BACKSPACE  0x10    // Move cursor left one
    #define	LCD_USER_COMMAND_FWDSPACE   0x14    // Move cursor right one
    #define	LCD_USER_COMMAND_PANLEFT    0x18    // Move screen left one
    #define	LCD_USER_COMMAND_PANRIGHT   0x1C    // Move screen right one
    #define	LCD_USER_COMMAND_CURSOROFF  0x0C    // clear cursor
    #define	LCD_USER_COMMAND_SECONDROW  0xC0    // go to second row

    /* user API reference */
    void LCD_Char_User(char data);
    void LCD_String_User(char *str);
    void LCD_Command_User(char cmd);
    void LCD_Char_XY_User(unsigned char row, unsigned char col, char data);
    void LCD_String_XY_User(unsigned char row, unsigned char col, char *str);
    void LCD_Init_User(void);

#endif
