#include <msp430.h> 


/**
 * main.c
 */
int main(void)
{
	WDTCTL = WDTPW | WDTHOLD;	// stop watchdog timer
	TA0CTL = 0x0110; // ACLK, ��� TAR
	TA0CCR0 = 0x0200; // PWM����
	TA0CCTL1 |= 0x00E0; // ���ģʽ7
	TA0CCR1 = 0x0180; //ռ�ձ�384/512=0.75
	TA0CCTL2 |= 0x00E0; // ���ģʽ7;
	TA0CCR2 = 0x0080; //ռ�ձ�128/512=0.25
	P1DIR |= 0x04; // P1.2 ����Ϊ���
	P1SEL |= 0x04; // P1.2�˿�Ϊ����
	P1DIR |= 0x08; // P1.3 ����Ϊ���
	P1SEL |= 0x08; // P1.3�˿�Ϊ����
	return 0;
}
