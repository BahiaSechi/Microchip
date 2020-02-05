/*
 * test program for gpio library (switch and led)
 * author 
 */
#include <bsplib.h>

void main(void)
{   
    /* TODO */
   // PORTA = 0b00000000;
    TRISA = 0b00000000;
    LATA = 0b11111111; 
  //  PORTA = 0b11110000  ; 
    /* Configuration des LED */
    led2_init();
    /*
    led3_init();
    led4_init();
    led5_init();
    */
    /* Configuration des Switch */
    /*
    switch1_init();
    switch2_init();
    */
    while (1) { 
        /* Eteindre toutes les LED */
        /*
        led2_off();
        led3_off();
        led4_off();
        led5_off();
        */
        /* Si on appuie sur le Switch 1
         * Les LED D4 et D5 s'allument */
        /*
        if(!switch1_read()){
            led4_on();
            led5_on();
        }
        */
        
        /* Si on appuie sur le Switch 2
         * Les LED D2 et D3 s'allument */
        /*
        if(!switch2_read()){
            led2_on();
            led3_on();
        }
        */
      
        
        
        led2_on();
        delay_40ms();
        led2_off();
        delay_40ms();
        
        
    }  

}
