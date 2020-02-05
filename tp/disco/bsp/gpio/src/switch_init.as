; file gpio/src/switch_init.asm
; brief switch initialization 
; author 

#include <pic18f27k40.inc>
    
; linker memory static allocation directives
PSECT text, class=CODE, reloc=2, space=0

global _switch1_init
global _switch2_init
 
_switch1_init:
    ; RB4
   ; BTFSC PORTB, 0;
   ; led4_on();
   ; led5_on();
   
   BANKSEL ANSELB
   BSF TRISB, 4 ; bit 4 de port B à 1
   BCF ANSELB, 4 ; ST and TTL input buffers are enabled
   return
    
_switch2_init:
   BANKSEL ANSELC
   BSF TRISC, 5 
   BCF ANSELC, 5 
   return
   
END