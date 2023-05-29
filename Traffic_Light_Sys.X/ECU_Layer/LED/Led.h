/* 
 * File:   Led.h
 * Author: MohamedHossam
 *
 * Created on April 30, 2023, 9:43 PM
 */

#ifndef LED_H
#define	LED_H

/*================= includes =====================*/
#include"../../MCAL_Layer/GPIO/GPIO.h"

/*============== Macro declarations ==================*/

/*============== Macro Function declarations ==================*/

/*============== Data type declarations ======================*/

/*============= Software Interfaces Declarations ================ */
void LED_Init(uint8_t ledPort,uint8_t ledPin);
void LED_ON(uint8_t ledPort,uint8_t ledPin);
void LED_OFF(uint8_t ledPort,uint8_t ledPin);
void LED_Toggle(uint8_t ledPort,uint8_t ledPin);
#endif	/* LED_H */

