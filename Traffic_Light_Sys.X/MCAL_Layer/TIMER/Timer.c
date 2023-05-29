/* 
 * File:   Timer.c
 * Author: MohamedHossam
 *
 * Created on April 30, 2023, 9:46 PM
 */

#include "Timer.h"


/*==========================================================
 * Choosing 1024 Prescaler
 * 5 Sec Delay
 * Num_of_overflow is 20 and 11 is initial value 

==========================================================*/

extern uint8_t Count;
extern uint8_t First_Click;
uint8_t OVF; /* overflow counter*/

/* pointer to function to save address of the function that passed to callback function*/
void static (*callbackvar)(uint8_t portname,uint8_t pinnum);

void setcallback(void (*cbvar)(uint8_t portname, uint8_t pinnum)){
    callbackvar = cbvar;
}

void TIMER_0_Init(){
    /* Select TIMER Mode (NORMAL MODE)*/
	TCCR0 |= ((0<<3) | (0<<6));
    Timer_0_Set_Init_Value(Init_Value);	
}


void Timer_0_Set_Init_Value(uint8_t val){
    TCNT0 = val;
}


void Timer_0_Start(){
    /*Selecting 1024 PRESCALER*/
    TCCR0 |= ((1<<0) | (1<<2));
    /*Waiting the overflow counter to reach 20*/
    while(OVF <20);
}


void Timer_0_Stop(){
    /*Setting control register to 0 (no prescaler) to stop the timer*/
    TCCR0 = 0;
    /*Resetting overflow counter*/
    OVF = 0;
}


void Timer_0_Reset(){
    Timer_0_Set_Init_Value(Init_Value);
    OVF = 0;
}


void Timer_0_Delay(){
    Timer_0_Start();
	Timer_0_Stop();
}

ISR(TIMER_0_OVF){
    /* Resetting initial value for next timer cycle */
    Timer_0_Set_Init_Value(Init_Value);
    OVF++;
    
    /*Blinking yellow lights only in phase2 & phase4*/
    if((Count == phase_2 )|| (Count == phase_4 )){
        if(!First_Click){
            /*Blink yellow light car only in normal mode*/
            callbackvar(CAR_light,LED_yellow);
        }
        /*Blink both yellow lights in PEDISTRAIN Mode*/
        else if(First_Click){
            callbackvar(CAR_light,LED_yellow);
            callbackvar(PED_light,LED_yellow);

        }
    }
}

