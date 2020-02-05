/*
* file adc/src/adc_init.c
* brief internal adc initialization
* author 
*/

#include <adc/include/adc.h>

void adc_init(void)
{
    
    // Configuration de ADCON0
    
    ADCON0bits.ADON = 0 ;
    ADCON0bits.ADCONT = 0 ;
    ADCON0bits.ADCS = 1 ;
    ADCON0bits.ADFM = 0 ;
    ADCON0bits.ADGO = 0 ;
    
    // Configuration de ADREF
    
    ADREFbits.ADNREF = 0 ;
    ADREFbits.ADPREF1 = 0 ;
    ADREFbits.ADPREF0 = 0 ;
	
    // Configuration de ADPHC 
    
    ADPCHbits.ADPCH = 0 ;
    
    // Configuration ANSEL
    
    TRISAbits.TRISA0 = 1 ;
    ANSELAbits.ANSELA0 = 1 ;
    
}
