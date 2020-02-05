; file common/delay/src/delay_1ms.h
; brief 1ms software delay
; warning 1ms duration only for 64MHz cpu clock  
; author 

#include <pic18f27k40.inc>

; linker memory static allocation directives for data
PSECT bss_delay, class=BANK0, space=1
; static privates declarations
delay_cnt1:  ds  1
delay_cnt2:  ds  1
bsr_tmp:     ds  1

; linker memory static allocation directives for code
PSECT text, class=CODE, reloc=2, space=0

global _delay_1ms

_delay_1ms:

MOVFF BSR, WREG
MOVLB 0
MOVFF WREG, bsr_tmp 
    
MOVLW 0
MOVWF delay_cnt1
    
MOVLW 21
MOVWF delay_cnt2
    
delay_1ms_L1:
    DECFSZ delay_cnt1
    GOTO delay_1ms_L1
    DECFSZ delay_cnt2
    GOTO delay_1ms_L1
	
    return 
END