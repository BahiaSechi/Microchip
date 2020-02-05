/* CPU specific features configuration */
#pragma config PLLDIV=2, CPUDIV=OSC1_PLL2, FOSC=HSPLL_HS
#pragma config BOR=OFF, WDT=OFF, MCLRE=ON, LVP = OFF

/* PIC18F4550 specific aliases */
#include <pic18f4550.h>

/* private declarations */
void task_toggle_led (void);
void task_set_led (void);
void task_clear_led (void);

#define TASK_TOGGLE 	1 
#define TASK_SET 		2 
#define TASK_CLEAR 		3 

/* main entry point - dummy application 
   use RD3 pin with LED */
void main(void) { 
    static char state;

	/* initializations */
    state = TASK_TOGGLE;
	LATD = 0x00;
	TRISD = 0xF7;

    /* application scheduling engine */
    while (1) {
		switch(state){
		case TASK_TOGGLE:
			task_toggle_led();
			break;
		case TASK_SET:
			task_set_led();
			break;
		case TASK_CLEAR:
			task_clear_led();
			break;
		}
		
		/* application state update */
		if (state == TASK_CLEAR) 
			state = 0;
        state++; 
    }      
}

/* toggle LED state */
void task_toggle_led (void) {
	#asm 
        BTG  LATD, 3 
    #endasm
}

/* activate LED state */
void task_set_led (void) {
	LATD |= 0x08;
}

/* inactivate LED state */
void task_clear_led (void) {
	LATDbits.LATD3 = 0;
}
