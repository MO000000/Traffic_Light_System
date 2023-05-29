/* 
 * File:   Button.c
 * Author: MohamedHossam
 *
 * Created on April 30, 2023, 9:42 PM
 */

#include"Button.h"

extern uint8_t Count;
extern uint8_t OVF;
extern uint8_t First_Click;

/**
 * 
 * @param buttonPort
 * @param buttonPin
 */
void  BUTTON_Init(uint8_t buttonPort,uint8_t buttonPin){
    GPIO_Init(buttonPort, buttonPin, INPUT);
}
/**
 * 
 * @param buttonPort
 * @param buttonPin
 * @param value
 */
void BUTTON_Read(uint8_t buttonPort,uint8_t buttonPin,uint8_t *value){
    GPIO_Read(buttonPort, buttonPin, value);
}

ISR(EXT_INT_0){
    
    /*Interrupt_0 will trigger on the rising edge so the long press will have the same effect as the normal press */
    /*if the first_click flag is true , then the button interrupt will  not do anything */
    if(!First_Click){
        /*here it skips the green light remaining wait time and turns on car blinking yellow light, while cars green light is still on */
        if(Count == phase_1){
            OVF = 20;
        }
        else if (Count == phase_2){
            /*Resets cars blinking yellow light remaining wait time and turns on pedestrians blinking yellow light*/
            LED_OFF(CAR_light, LED_yellow);
            LED_OFF(PED_light, LED_yellow);
            
            Timer_0_Reset();

        }
        else if (Count == phase_3){
            Timer_0_Reset();
            /*Resets cars red light remaining wait time, turns pedestrians green light on and red light off*/
            LED_OFF(PED_light, LED_red);
            LED_ON(PED_light, LED_green);

        }
        else if (Count == phase_4){
            /*it skips cars blinking yellow light remaining wait time and go back to phase_2*/
            OVF = 20;
            Count = phase_2;
        }       
        /*Setting first_click variable to (1) indicates pedestrian mode. It is set back to (0) when the 4 phases are complete*/
        First_Click = 1;
    }  
}


