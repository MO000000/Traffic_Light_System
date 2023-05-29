/* 
 * File:   Led.c
 * Author: MohamedHossam
 *
 * Created on April 30, 2023, 9:43 PM
 */

#include"Led.h"

/**
 * 
 * @param ledPort
 * @param ledPin
 */
void LED_Init(uint8_t ledPort,uint8_t ledPin){
    GPIO_Init(ledPort, ledPin, OUTPUT);   
}
/**
 * 
 * @param ledPort
 * @param ledPin
 */
void LED_ON(uint8_t ledPort,uint8_t ledPin){
    GPIO_Write(ledPort, ledPin, HIGH);
}
/**
 * 
 * @param ledPort
 * @param ledPin
 */
void LED_OFF(uint8_t ledPort,uint8_t ledPin){
     GPIO_Write(ledPort, ledPin, LOW);
}
/**
 * 
 * @param ledPort
 * @param ledPin
 */
void LED_Toggle(uint8_t ledPort,uint8_t ledPin){
    GPIO_Toggle(ledPort, ledPin);
}