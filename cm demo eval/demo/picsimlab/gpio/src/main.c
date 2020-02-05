/*
 * file :  main_lcd.c
 * brief : gpio interfaces evaluation - picsimlab project board 3 
 * author : hugo descoubes
 */

/* cpu configuration bits */
#pragma config PLLDIV=2, CPUDIV=OSC1_PLL2, FOSC=HSPLL_HS, BOR=OFF, WDT=OFF, MCLRE=ON

#include <p18f4550.h>
#include <delays.h>

#define	DelayUser_15ms()	Delay1KTCYx(181)

/* 
 * main entry point
 */
void main() {
    int i;
    
    /* led2 demo */
    TRISBbits.TRISB0 = 0;
    TRISBbits.TRISB1 = 0;
    TRISBbits.TRISB2 = 0;
    TRISBbits.TRISB3 = 0;   
    
    LATBbits.LATB0 = 0;
    LATBbits.LATB1 = 1;
    LATBbits.LATB2 = 1;
    LATBbits.LATB3 = 0;

    /* buzzer demo */
    TRISAbits.TRISA5 = 0;
    LATAbits.LATA5 = 1;
    for (i=0; i<100; i++)
        DelayUser_15ms();
    LATAbits.LATA5 = 0;
    
    /* it's a trap */
    while (1);
}

