#include <msp430.h> 


/**
 * main.c
 */
int main(void)
{
	WDTCTL = WDTPW | WDTHOLD;	// stop watchdog timer

	TA0CTL = TASSEL_1 + TACLR;              // ACLK, ��� TAR
	TA0CCR0 = 512-1;                        // PWM����
	TA0CCTL1 = OUTMOD_7;
	TA0CCR1 = 384;                    //ռ�ձ�  384/512=0.75
	TA0CCTL2 =           ;
	TA0CCR2 =         ;               //ռ�ձ�    ��/512=0.25

	P1DIR |= BIT2;                        // P1.2 ���
	P1SEL |= BIT2;                        // P1.2 TA0.1
	P1DIR |=     ;                        // P1.3 ���
	P1SEL |=     ;                        // P1.3 TA0.2

	TA0CTL |= MC0;                        // Timer_A ������ģʽ

	for (;;)
	{
	    _BIS_SR(LPM3_bits);                 // ���� LPM3
	    _NOP();
	}
	
	return 0;
}













