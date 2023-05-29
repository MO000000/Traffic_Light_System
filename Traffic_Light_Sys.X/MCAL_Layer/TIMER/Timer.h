/* 
 * File:   Timer.h
 * Author: MohamedHossam
 *
 * Created on April 30, 2023, 9:46 PM
 */

#ifndef TIMER_H
#define	TIMER_H


/*================= includes =====================*/
#include"../Registers.h"
#include"../Std_Types.h"
#include"../EXT_INT/EXT_INT.h"

/*============== Macro declarations ==================*/
#define Init_Value 11
/*============== Macro Function declarations ==================*/

/*============== Data type declarations ======================*/

/*============= Software Interfaces Declarations ================ */

void TIMER_0_Init();
void Timer_0_Set_Init_Value(uint8_t val);
void Timer_0_Start();
void Timer_0_Stop();
void Timer_0_Reset();
void Timer_0_Delay();

/* Callback function to access led toggle from upper layer*/
void setcallback(void (*cbvar)(uint8_t portname, uint8_t pinnum));

#endif	/* TIMER_H */

