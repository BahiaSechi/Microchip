; file common/delay/src/delay_10us.h
; brief 10us software delay
; warning 10us duration only for 64MHz cpu clock  
; author 

#include <pic18f27k40.inc>

; linker memory static allocation directives for data
PSECT bss_delay,class=BANK0,space=1
; static privates declarations
delay_cnt1:  ds 1   ; 1 byte static memory allocation
bsr_tmp:     ds  1

; linker memory static allocation directives for code
PSECT text, class=CODE, reloc=2, space=0

global _delay_10us
 
_delay_10us:
MOVFF BSR, WREG
MOVLB 0
MOVFF WREG, bsr_tmp 
      
MOVLW 53
MOVWF delay_cnt1
    
delay_10us_L1:
    DECFSZ delay_cnt1
    GOTO delay_10us_L1
    return

END