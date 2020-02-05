/*
 * file :  LCD_write_Data.c
 * brief : write data or command to gpio port. Driver function
 * author : hugo descoubes
 */

#include <LCDUser.h>

/*
 * write data or command to gpio port
 */
void LCD_write_Data(char data_cmd){
    /* cf. pdf schematic board3 
     * cf. pdf datasheet HD44780U - p32, p52, p53, p58
     */
    
    DATAS_PIN_LCD_USER = data_cmd;
}
