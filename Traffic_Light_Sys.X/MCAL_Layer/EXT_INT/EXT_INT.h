/* 
 * File:   EXT_INT.h
 * Author: MohamedHossam
 *
 * Created on April 30, 2023, 9:45 PM
 */

#ifndef EXT_INT_H
#define	EXT_INT_H

/*================= includes =====================*/
#include"../Registers.h"
#include"../Std_Types.h"

/*============== Macro declarations ==================*/

/* Interrupt Vectors*/

#define EXT_INT_0   __vector_1  /* for Button pin */
#define EXT_INT_1   __vector_2 
#define EXT_INT_2	__vector_3
#define TIMER_0_OVF __vector_11 


/* for defining timer0 overflow vector */
#define ISR(INT_VECT)  void INT_VECT (void) __attribute__ ((signal,used)); void INT_VECT (void)

/*============== Macro Function declarations ==================*/


/*============== Data type declarations ======================*/


/*============= Software Interfaces Declarations ================ */
void INTERRUPT_Global_Init();
void INTERRUPT_0_Init();
void INTERRUPT_T0_OVF_Init();

#endif	/* EXT_INT_H */