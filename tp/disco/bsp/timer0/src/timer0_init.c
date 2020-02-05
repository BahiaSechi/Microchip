/*
 * timer0/src/timer0_init.c
 * timer0 configuration
 * author 
 */

#include <timer0/include/timer0.h>

void timer0_init(uInt16_t count)
{
    //int decimal_time = 65535 - count;
        
    // Registres de configuration
    T0CON0 = 0x10;
    T0CON1 = 0x76;
    
    // Compteur pour lever une interruption toutes les 20ms
    TMR0H = 0xB1;
    TMR0L = 0xDF;
    
    PIR0bits.TMR0IF = 0; // Interrupt flag
    PIE0bits.TMR0IE = 1; // Interrupt enable
    IPR0bits.TMR0IP = 0; // Priorité basse ou haute
    
    // Initialisation des bits utiles pour le démasquage qui trie les interruptions (autorisée ou non)
    INTCONbits.IPEN = 1; 
    INTCONbits.GIEL = 1; 
    INTCONbits.GIEH = 1; 
    
    // Activer Timer0
    T0CON0bits.T0EN = 1;
}
