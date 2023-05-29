/* 
 * File:   Application.h
 * Author: MohamedHossam
 *
 * Created on April 27, 2023, 4:56 PM
 */

#ifndef APPLICATION_H
#define	APPLICATION_H

/*================= includes =====================*/
#define F_CPU 1000000U

#include"ECU_Layer/Button/Button.h"
#include"MCAL_Layer/EXT_INT/EXT_INT.h"
#include"MCAL_Layer/TIMER/Timer.h"
#include"ECU_Layer/LED/Led.h"

/*============== Macro declarations ==================*/

/*============== Macro Function declarations ==================*/

/*============== Data type declarations ======================*/

/*============= Software Interfaces Declarations ================ */
void APP_Init();
void APP_Start();

#endif	/* APPLICATION_H */
