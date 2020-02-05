/*
 * test program for timer0 library
 * author 
 */
#include <bsplib.h>

void __interrupt(high_priority) high_isr (void)
{ 
    // Timer0 IRQ 
    if (PIR0bits.TMR0IF) {
        // Acquitter Timer0 IRQ
        PIR0bits.TMR0IF = 0;
         // Recharger Timer0
        timer0_reload(0);

        // Bit toggle LATA 4 : toggle le bit 4 de LAT au port A (1 -> 0 ou 0 -> 1)
        asm("BTG LATA, 4");
    } 	
     
}

void main(void)
{
    TRISAbits.TRISA4 = 0; // Output
    LATAbits.LATA4 = 1; // LED Allumée
    
    timer0_init(0);  
    
    while (1) {
        asm("sleep");
    }   
}
