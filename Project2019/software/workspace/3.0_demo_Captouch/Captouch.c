/*
 * Captouch.c
 */
#include "captouch.h"
#include <msp430.h>

const GPIO_TypeDef GPIO3 =
{
  &P3IN, &P3OUT, &P3DIR, &P3REN, &P3SEL
};

const GPIO_TypeDef GPIO6 =
{
  &P6IN, &P6OUT, &P6DIR, &P6REN, &P6SEL
};
const GPIO_TypeDef GPIO7 =
{
  &P7IN, &P7OUT, &P7DIR, &P7REN, &P7SEL
};
const GPIO_TypeDef GPIO8 =
{
  &P8IN, &P8OUT, &P8DIR, &P8REN, &P8SEL
};
const GPIO_TypeDef* LED_GPIO[2] = {&GPIO7, &GPIO6};
const uint8_t LED_PORT[2] = {BIT4, BIT3};
void initCapTouch()
{
  //Vref加到+极
  CBCTL2 = CBREF14+CBREF13+CBREF02;
  CBCTL1 = CBON + CBF;
  CBCTL2 |= CBRS_1;
  CBCTL3 = ALL_PORT;
}

uint16_t CapTouch_ReadChannel(int i)
{
  uint16_t cpu_cnt = 0;
  uint16_t osc_cnt = 0;

  CBCTL0 = CBIMEN + (i << 8); //外部信号加到负极
  P6OUT &= ~ALL_PORT;
  P6DIR |= ALL_PORT & ~(1 << i);
  CBCTL3 = 1 << i;

  ////_ECRIT(gie);

  while(1)
  {
    if(CBCTL1 & CBOUT) 			//控制电容的充放电
      P6OUT |= ALL_PORT;
    else
      P6OUT &= ~ALL_PORT;

    if(CBINT & CBIFG)
    {
      CBINT &= ~CBIFG;
      osc_cnt++;
    }

    if(osc_cnt >= OSC_CYCLES)
      break;

    cpu_cnt++;					//计算频率
  }

  //_LCRIT(gie);

  CBCTL3 = ALL_PORT;
  P6DIR &= ~ALL_PORT;

  return cpu_cnt;
}

