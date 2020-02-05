; file common/delay/src/delay_200ms.h
; brief 200ms software delay
; warning 200ms duration only for 64MHz cpu clock  
; author 

#include <pic18f27k40.inc>

; linker memory static allocation directives for data
PSECT bss_delay, class=BANK0, space=1
; static privates declarations
delay_cnt1:  ds  1
delay_cnt2:  ds  1
delay_cnt3:  ds  1
bsr_tmp:     ds  1

; linker memory static allocation directives for code
PSECT text, class=CODE, reloc=2, space=0

global _delay_200ms

_delay_200ms:

MOVFF BSR, WREG
MOVLB 0
MOVFF WREG, bsr_tmp 
    
MOVLW 0
MOVWF delay_cnt1
    
MOVLW 0
MOVWF delay_cnt2
    
MOVLW 8
MOVWF delay_cnt3
    
delay_1ms_L1:
    DECFSZ delay_cnt1
    GOTO delay_1ms_L1
    DECFSZ delay_cnt2
    GOTO delay_1ms_L1
    DECFSZ delay_cnt3
    GOTO delay_1ms_L1
	
    return 
END