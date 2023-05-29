/* 
 * File:   Macros.h
 * Author: MohamedHossam
 *
 * Created on April 27, 2023, 5:05 PM
 */

#ifndef Std_Types_H
#define	Std_Types_H
/*========== Data type declarations ==============*/
typedef unsigned char uint8_t;

/*=============== Macro declarations =================*/
//** PORT names to pass to functions **//
#define PORT_A 'A'
#define PORT_B 'B'
#define PORT_C 'C'
#define PORT_D 'D'

//** LED port names **//
#define CAR_light PORT_A
#define PED_light PORT_B

//** LED pin names **//
#define LED_green	0
#define LED_yellow	1
#define LED_red		2

//** Button port name **//
#define BUTTON_PORT PORT_D
	
//** Button pin name **//
#define BUTTON_pin	0
	
//** Execution phases **//
#define phase_1 0
#define phase_2 1
#define phase_3 2
#define phase_4 3

/*=============== Macro Functions declarations =================*/
#define SET_BIT(X,BIT_NO)        X|=(1<<BIT_NO)
#define CLR_BIT(X,BIT_NO)        X&=~(1<<BIT_NO)
#define READ_BIT(X,BIT_NO)       ((X&(1<<BIT_NO))>>BIT_NO)
#define TOGGLE_BIT(X,BIT_NO)     X^=(1<<BIT_NO)

#endif	/* Std_Types_H */

