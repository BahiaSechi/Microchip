/*
 * uart1/src/uart1_init.c
 * uart1 configuration
 * author 
 */

#include <uart1/include/uart1.h>

/* TODO */	
	
void uart1_init(uInt32_t bdrate)
{
    // Module transmission
    TX1STAbits.BRGH = 1;
    TX1STAbits.TXEN = 1;
    TX1STAbits.SYNC = 0;
    TX1STAbits.TX9 = 0;
    
    // Module reception
    RCSTA1bits.RX9 = 0;
    RCSTA1bits.CREN = 0;
    RCSTA1bits.SPEN = 1;

    // PIN SELECT
    RC6PPS = 0x09;
    RX1PPS = 0x17;
    ANSELCbits.ANSELC7 = 0;
      
    // Baud rate
    BAUDCON1bits.BRG16 = 1;
    
    uInt16_t baud_rate_calc = CPU_FREQ_HZ/(4*(UART1_BAUD_RATE+1));
    SP1BRG = (uInt16_t) baud_rate_calc;
    SP1BRGH = (uInt16_t) (baud_rate_calc >> 8);
}
