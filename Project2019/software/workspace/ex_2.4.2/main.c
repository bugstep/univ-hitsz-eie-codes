#include <msp430.h> 


/**
 * main.c
 */
int main(void)
{
    WDTCTL = WDT_MDLY_32; // 定时周期为32ms
    SFRIE1 |= WDTIE;      // 使能WDT中断
    P1DIR |= BIT0;        // P1.0输出
    _enable_interrupt();
	
	return 0;
}

#pragma vector= WDT_VECTOR
__interrupt void watchdog_timer (void) {
    P1OUT ^= 0x01;        // P1.0取反
}
