/* 
 * File:   GPIO.h
 * Author: MohamedHossam
 *
 * Created on April 30, 2023, 9:45 PM
 */

#ifndef GPIO_H
#define	GPIO_H

/*================= includes =====================*/
#include "../Std_Types.h"
#include"../Registers.h"

/*============== Macro declarations ==================*/

#define PORT_A 'A'
#define PORT_B 'B'
#define PORT_C 'C'
#define PORT_D 'D'

#define INPUT    0
#define OUTPUT   1

#define LOW      0
#define HIGH     1
/*============== Macro Function declarations ==================*/


/*============== Data type declarations ======================*/


/*============= Software Interfaces Declarations ================ */
void GPIO_Init(uint8_t PortNumber, uint8_t PinNumber, uint8_t diection );
void GPIO_Toggle(uint8_t PortNumber, uint8_t PinNumber);
void GPIO_Write(uint8_t PortNumber, uint8_t PinNumber, uint8_t Value );
void GPIO_Read(uint8_t PortNumber, uint8_t PinNumber, uint8_t *Value );



#endif	/* GPIO_H */

