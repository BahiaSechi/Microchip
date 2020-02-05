/*
 * timer0/src/timer0_reload.c
 * timer0 reload value
 * author 
 */

#include <timer0/include/timer0.h>

void timer0_reload(uInt16_t count)
{
    
    TMR0H = 0xB1;
    TMR0L = 0xDF;
    
}
