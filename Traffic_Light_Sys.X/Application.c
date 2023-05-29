/* 
 * File:   Application.c
 * Author: MohamedHossam
 *
 * Created on April 27, 2023, 1:51 AM
 */


#include"Application.h"


/*keeps track of program during execution from phase_1 (0) to phase_4 (3)*/
uint8_t Count = phase_1;
/*first_click flag holds the value (0) when in normal mode. Once it is clicked its value turns to (1) indicating pedestrian mode.*/
uint8_t First_Click = 0;



void APP_Init(){
/* Initializing button port and pin as input*/
	BUTTON_Init(BUTTON_PORT, BUTTON_pin);
	
	// Initializing all the system led port and pins as output.
	LED_Init(CAR_light, LED_green);
	LED_Init(CAR_light, LED_yellow);
	LED_Init(CAR_light, LED_red);
	LED_Init(PED_light, LED_green);
	LED_Init(PED_light, LED_yellow);
	LED_Init(PED_light, LED_red);
	
	// Initializing Timer_0 
	TIMER_0_Init();
	// Enabling Timer_0 overflow interrupt
	INTERRUPT_T0_OVF_Init();
	
	// Enabling INT_0 interrupt
	INTERRUPT_0_Init();
	
	// Enabling global interrupt
	INTERRUPT_Global_Init();
	
	// Passing led toggle function to operate in timer driver (lower level)(MCAL)
	setcallback(LED_Toggle);
}


void APP_Start(void){
    /*======== PHASE_1 ===============*/
    if(Count == phase_1){
        /*Initial start of the normal mode cycle*/
		LED_ON(CAR_light, LED_green);
		LED_ON(PED_light, LED_red);
        
        /* Starts a 5sec delay*/
        Timer_0_Delay();
        /* Count is incremented by one to go to next phase, then modulus 4 to make the range of values (0-3) --> (phase_1 - phase_4)*/
		Count = (Count+1)%4;     
    }
    /*==================================================================================================*/
    
    /*========== PHASE_2 ===============*/
    if(Count == phase_2){
        	/*	In this phase, timer_0 overflow interrupt blinks cars yellow light in normal mode
			and both cars and pedestrian yellow light in pedestrian mode. */
		Timer_0_Delay();
		
		/*Turning both yellow leds off to ensure toggling ends with an off states for the leds after blinking.*/
		LED_OFF(CAR_light, LED_yellow);
		LED_OFF(PED_light, LED_yellow);
		
		Count = (Count+1)%4;
    }
    /*==================================================================================================*/
    
    /*========== PHASE_3 ===============*/
    if(Count == phase_3){
    	// Program only enters this if condition in pedestrian mode (first_click==1)
		if(First_Click){
			// Allowing pedestrians to cross the road by turning on green light and turning off red light in pedestrian mode.
			LED_ON(PED_light, LED_green);
			LED_OFF(PED_light, LED_red);
		}
		
		// Stopping the cars in normal mode by turning on red light and turning off green light.
		LED_OFF(CAR_light, LED_green);
		LED_ON(CAR_light, LED_red);
		
		Timer_0_Delay();
		
		Count = (Count+1)%4;
    }
    
    
    
    
 
  /*==================================================================================================*/
    
    /*========== PHASE_4 ===============*/
    /*	In this phase, timer_0 overflow interrupt blinks cars yellow light in normal mode
		and both cars and pedestrian yellow light in pedestrian mode. */
	Timer_0_Delay();
	
	// Turning off pedestrian green light in case of pedestrian mode to exit and enter normal mode phase_1 again.
	LED_OFF(PED_light, LED_green);
	
	// Turning off cars blinking yellow light in case of normal mode to start again from phase_1.
	LED_OFF(CAR_light, LED_yellow);
	
	// Turning off pedestrian yellow light in case of pedestrian mode to exit and enter normal mode phase_1 again.
	LED_OFF(PED_light, LED_yellow);
	
	
        if(Count == phase_4){
        Count = (Count+1)%4;

        /* Turning off cars blinking red light in case of normal mode to start again from phase_1*/
        LED_OFF(CAR_light, LED_red);

        /* Setting first_click flag to zero to indicate returning to normal mode.*/
            First_Click = 0;
	    }
}


int main(void) {
    
    APP_Init();
    while(1){
      APP_Start();
    }
}

