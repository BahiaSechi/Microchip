/*
* file adc/src/adc_read.c
* brief read 8 Msbits converted data from adc 
* author 
*/

#include <adc/include/adc.h>

uInt8_t adc_read(void)
{
    adc_start();
    adc_busy();
    return ADRESH;
}
