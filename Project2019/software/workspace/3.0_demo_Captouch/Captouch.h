/*
 * Captouch.h
 *
 */

#ifndef CAPTOUCH_H_
#define CAPTOUCH_H_
#include <msp430.h>
#include <stdint.h>
#define captouch_max 250
#define OSC_CYCLES 10
typedef struct
{
  const volatile uint8_t* PxIN;
  volatile uint8_t* PxOUT;
  volatile uint8_t* PxDIR;
  volatile uint8_t* PxREN;
  volatile uint8_t* PxSEL;
} GPIO_TypeDef;


extern const GPIO_TypeDef* LED_GPIO[2];
extern const uint8_t LED_PORT[2];
//ДЅУўХЬдкP6.0~P6.1
#define ALL_PORT (BIT0+BIT1)

extern void initCapTouch();
extern uint16_t CapTouch_ReadChannel(int i);
#endif /* CAPTOUCH_H_ */
