/*
 * test program for uart1 library
 * author 
 */

#include <bsplib.h>

/* TODO */

void __interrupt(low_priority) isr_low (void)
{
        // Timer0 IRQ 
    if (PIR0bits.TMR0IF) {
        // Acquitter Timer0 IRQ
        PIR0bits.TMR0IF = 0;
         // Recharger Timer0
        timer0_reload(0);
    }				
}

void main(void)
{
    uart1_init(9600);
    
    while (1) {
		/* TODO */
    }      
}
