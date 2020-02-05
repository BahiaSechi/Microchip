/*
 * file :  portLCDUser.h
 * brief : portable application lcd header file
 * author : hugo descoubes
 */

#ifndef   __PORTAGE_LCD_USER_HEADER__
#define   __PORTAGE_LCD_USER_HEADER__

    /* toolchain and processor hearders dependencies */
	#include <p18cxxx.h>
	#include <delays.h>
	
	/* application board gpio dependencies */
    #define	E_OUTPUTPIN_LCD_USER        TRISEbits.RE1
    #define	RS_OUTPUTPIN_LCD_USER       TRISEbits.RE0
    #define	DATA_OUTPUTPORT_LCD_USER    TRISD
	#define	E_PIN_LCD_USER              LATEbits.LATE1
	#define RS_PIN_LCD_USER             LATEbits.LATE0
	#define DATAS_PIN_LCD_USER          LATD
	
	/* software delays */
	/* Tcy = 83,2ns */
	#define	DelayUser_2ms()		Delay1KTCYx(24) 	
	#define	DelayUser_5ms()		Delay1KTCYx(61)	
	#define	DelayUser_15ms()	Delay1KTCYx(181)	
	#define	DelayUser_400us()	Delay100TCYx(48)	
	#define	DelayUser_4us()		Delay10TCYx(5)	

#endif
