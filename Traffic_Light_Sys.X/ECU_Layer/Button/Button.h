/* 
 * File:   Button.h
 * Author: MohamedHossam
 *
 * Created on April 30, 2023, 9:42 PM
 */

#ifndef BUTTON_H
#define	BUTTON_H

/*================= includes =====================*/
#include"../../ECU_Layer/LED/Led.h"
#include"../../MCAL_Layer/TIMER/Timer.h"

/*============== Macro declarations ==================*/

/*============== Macro Function declarations ==================*/

/*============== Data type declarations ======================*/

/*============= Software Interfaces Declarations ================ */

void BUTTON_Init(uint8_t buttonPort,uint8_t buttonPin);
void BUTTON_Read(uint8_t buttonPort,uint8_t buttonPin,uint8_t *value);


#endif	/* BUTTON_H */

