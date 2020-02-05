/*
 * file :  main.c
 * brief : lcd module evaluation - picsimlab project board 3 
 * author : hugo descoubes
 */

/* cpu configuration bits */
#pragma config PLLDIV=2, CPUDIV=OSC1_PLL2, FOSC=HSPLL_HS, BOR=OFF, WDT=OFF, MCLRE=ON

#include <p18f4550.h>
#include <LCDUser.h>

char str1[] = "Hello, World!";
char str2[] = "By By !";

/* 
 * main entry point
 */
void main() {
    char i;
 
    /* lcd demo */
    LCD_Init_User();

    LCD_String_User(str1);
    for (i=0; i<96; i++) {
        DelayUser_15ms();
        DelayUser_15ms();
        LCD_Command_User(LCD_USER_COMMAND_PANRIGHT);
    }
    
    LCD_Command_User(LCD_USER_COMMAND_CLEAR);
    LCD_Command_User(LCD_USER_COMMAND_HOME);
    LCD_String_XY_User(2,6,str2);  

    /* it's a trap */
    while (1);
}

