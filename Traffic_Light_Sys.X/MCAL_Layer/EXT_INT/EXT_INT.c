/* 
 * File:   EXT_INT.c
 * Author: MohamedHossam
 *
 * Created on April 30, 2023, 9:45 PM
 */

#include"EXT_INT.h"

void INTERRUPT_Global_Init(){
    /*Enable global interrupt in status register */
    SET_BIT(SREG, 7);
}
void INTERRUPT_0_Init(){
    /* Setting int_0 mode in rising edge*/
    SET_BIT(MCUCR, 0);
    SET_BIT(MCUCR, 1);
    
    /* Setting int_0 interrupt */
    SET_BIT(GICR, 6);
}
void INTERRUPT_T0_OVF_Init(){
    /* Enabling T0_OVF Interrupt*/
    SET_BIT(TIMSK, 0);
}

