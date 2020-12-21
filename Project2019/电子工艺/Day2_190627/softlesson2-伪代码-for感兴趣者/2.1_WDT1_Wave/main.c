#include <msp430.h> 

/**
 * main.c
 */
void main(void)
{
  WDTCTL = WDT_MDLY_32;           // 定时周期为32ms
  SFRIE1 |= WDTIE;                // 使能WDT中断
  P1DIR |= BIT0;                  // P1.0输出

  __enable_interrupt();           // 系统中断允许

  for (;;)
  {
    // 进入 LPM0
    __bis_SR_register(LPM0_bits);
    __no_operation();
  }
}

// 看门狗中断服务子程序
#pragma vector= WDT_VECTOR
__interrupt void watchdog_timer (void)
{
    P1OUT ^= 0x01;          // P1.0取反
}

// WDTCTL = WDTPW | WDTCNTCL;  // 周期性地对WDTCNT清零，防止WDT_A溢出
