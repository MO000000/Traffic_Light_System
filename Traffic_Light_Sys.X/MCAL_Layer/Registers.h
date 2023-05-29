/* 
 * File:   Registers.h
 * Author: MohamedHossam
 *
 * Created on April 27, 2023, 5:06 PM
 */

#ifndef REGISTERS_H
#define	REGISTERS_H


/*================= MACRO Declarations====================*/

/* PORT A */
#define  PORTA       *((volatile uint8_t*)0x3B)
#define  DDRA        *((volatile uint8_t*)0x3A) 
#define  PINA        *((volatile uint8_t*)0x39)

/*PORT B */
#define  PORTB       *((volatile uint8_t*)0x38)
#define  DDRB        *((volatile uint8_t*)0x37) 
#define  PINB        *((volatile uint8_t*)0x36)

/* PORT C */
#define  PORTC       *((volatile uint8_t*)0x35)
#define  DDRC        *((volatile uint8_t*)0x34) 
#define  PINC        *((volatile uint8_t*)0x33)

/* PORT D */
#define  PORTD       *((volatile uint8_t*)0x32)
#define  DDRD        *((volatile uint8_t*)0x31) 
#define  PIND        *((volatile uint8_t*)0x30)

//****************************
//* Timer0 REGISTERS
//****************************
#define  TCCR0       *((volatile uint8_t*)0x53)
#define  TCNT0       *((volatile uint8_t*)0x52) 
#define  TIFR        *((volatile uint8_t*)0x58)
#define  OCR0        *((volatile uint8_t*)0x5C)
#define  TIMSK       *((volatile uint8_t*)0x59) /* Responsible of timer interrupt */


//****************************
//* Interrupt REGISTERS
//****************************              
#define SREG       *((volatile uint8_t*)0x5F)     /* STATUS Register*/
#define MCUCR      *((volatile uint8_t*)0x55)     /*Responsible of Choosing INTERRUPT Sense*/
#define GICR       *((volatile uint8_t*)0x5B)     /*Responsible of Enabling the INTERRUPT  */
#define GIFR       *((volatile uint8_t*)0x5A)

#endif	/* REGISTERS_H */

