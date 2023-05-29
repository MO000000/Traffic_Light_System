/* 
 * File:   GPIO.c
 * Author: MohamedHossam
 *
 * Created on April 30, 2023, 9:45 PM
 */

#include"GPIO.h"

/**
 * 
 * @param PortNumber
 * @param PinNumber
 * @param diection
 */
void GPIO_Init(uint8_t PortNumber, uint8_t PinNumber, uint8_t diection ){
    switch(PortNumber){
        case PORT_A :
            if(diection == INPUT){
                DDRA&=~(1<<PinNumber);
            }
            else if(diection == OUTPUT){
                DDRA|=(1<<PinNumber);
            }
            else{/* Nothing */}
            break;
            
        case PORT_B :
            if(diection == INPUT){
                DDRB&=~(1<<PinNumber);
            }
            else if(diection == OUTPUT){
                DDRB|=(1<<PinNumber);
            }
            else{/* Nothing */}
            break;

        case PORT_C :
            if(diection == INPUT){
                DDRC&=~(1<<PinNumber);
            }
            else if(diection == OUTPUT){
                DDRC|=(1<<PinNumber);
            }
            else{/* Nothing */}
            break;

        case PORT_D :
            if(diection == INPUT){
                TCNT0&=~(1<<PinNumber);
            }
            else if(diection == OUTPUT){
                TCNT0|=(1<<PinNumber);
            }
            else{/* Nothing */}
            break;            
    }   
}

/**
 * 
 * @param PortNumber
 * @param PinNumber
 */
void GPIO_Toggle(uint8_t PortNumber, uint8_t PinNumber){
    	switch(PortNumber){
		case PORT_A:
		PORTA^=(1<<PinNumber);
		
		break;
		case PORT_B:
		PORTB^=(1<<PinNumber);
		
		break;
		case PORT_C:
		PORTC^=(1<<PinNumber);
		
		break;
		case PORT_D:
		PORTD^=(1<<PinNumber);
		
		break;
	}   
}

/**
 * 
 * @param PortNumber
 * @param PinNumber
 * @param Value
 */
void GPIO_Write(uint8_t PortNumber, uint8_t PinNumber, uint8_t Value ){
        switch(PortNumber){
        case PORT_A :
            if(Value == LOW){
                /* Write 0 */
                PORTA&=~(1<<PinNumber);
            }
            else if(Value == HIGH){
                /* Write 1 */
                PORTA|=(1<<PinNumber);
            }
            else{/* Nothing */}
            break;
            
        case PORT_B :
            if(Value == LOW){
                /* Write 0 */
                PORTB&=~(1<<PinNumber);
            }
            else if(Value == HIGH){
                /* Write 1 */
                PORTB|=(1<<PinNumber);
            }
            else{/* Nothing */}
            break;

        case PORT_C :
            if(Value == LOW){
                /* Write 0 */
                PORTC&=~(1<<PinNumber);
            }
            else if(Value == HIGH){
                /* Write 1 */
                PORTC|=(1<<PinNumber);
            }
            else{/* Nothing */}
            break;

        case PORT_D :
            if(Value == LOW){
                /* Write 0 */
                PORTD&=~(1<<PinNumber);
            }
            else if(Value == HIGH){
                /* Write 1 */
                PORTD|=(1<<PinNumber);
            }
            else{/* Nothing */}
            break;            
    }   
}

/**
 * 
 * @param PortNumber
 * @param PinNumber
 * @param Value
 */
void GPIO_Read(uint8_t PortNumber, uint8_t PinNumber, uint8_t *Value ){
       	switch(PortNumber){
            case PORT_A:
                *Value =(PINA&(1<<PinNumber))>>PinNumber;

            break;
            case PORT_B:
                *Value =(PINB&(1<<PinNumber))>>PinNumber;

            break;
            case PORT_C:
                *Value =(PINC&(1<<PinNumber))>>PinNumber;

            break;
            case PORT_D:
                *Value =(PIND&(1<<PinNumber))>>PinNumber;
		
		break;
            default : /* Nothing */
                break;
	    }   
}