#include <msp430.h> 


/**
 * main.c
 */
int main(void)
{
	WDTCTL = WDTPW | WDTHOLD;	// stop watchdog timer
	TA0CTL = 0x0110; // ACLK, 清除 TAR
	TA0CCR0 = 0x0200; // PWM周期
	TA0CCTL1 |= 0x00E0; // 输出模式7
	TA0CCR1 = 0x0180; //占空比384/512=0.75
	TA0CCTL2 |= 0x00E0; // 输出模式7;
	TA0CCR2 = 0x0080; //占空比128/512=0.25
	P1DIR |= 0x04; // P1.2 方向为输出
	P1SEL |= 0x04; // P1.2端口为外设
	P1DIR |= 0x08; // P1.3 方向为输出
	P1SEL |= 0x08; // P1.3端口为外设
	return 0;
}
