/*
 * test program for adc library 
 * author 
 */

#include <bsplib.h>

void main(void)
{
    // Configuration des LED
    
    TRISAbits.TRISA4 = 0; // Output
    LATAbits.LATA4 = 1; // LED Allum�e
    
    TRISAbits.TRISA5 = 0; // Output
    LATAbits.LATA5 = 1; // LED Allum�e
    
    TRISAbits.TRISA6 = 0; // Output
    LATAbits.LATA6 = 1; // LED Allum�e
    
    TRISAbits.TRISA7 = 0; // Output
    LATAbits.LATA7 = 1; // LED Allum�e
    
    adc_init();
	adc_enable();
        
    while (1) {
		LATA = adc_read();
        asm("NOP");
    }      
}
