/*
 * gpio/src/led_init.c
 * led's pins initializations 
 * author 
 */

#include <gpio/include/gpio.h>


void led2_init(void)
{
    
    TRISA4 = 0;
    LATA4 = 1;
     
    /* TODO */
}  

void led3_init(void)
{
    TRISA5 = 0;
    LATA5 = 1;
  
   // LATA5 = 1 ;
    /* TODO */
} 

void led4_init(void)
{
   
    TRISA6 = 0;
    LATA6 = 1;
     
    /* TODO */
} 

void led5_init(void)
{
    TRISA7 = 0;
    LATA7 = 1;
    /* TODO */
} 
