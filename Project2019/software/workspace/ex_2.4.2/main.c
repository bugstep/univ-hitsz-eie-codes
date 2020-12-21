#include <msp430.h> 


/**
 * main.c
 */
int main(void)
{
    WDTCTL = WDT_MDLY_32; // ��ʱ����Ϊ32ms
    SFRIE1 |= WDTIE;      // ʹ��WDT�ж�
    P1DIR |= BIT0;        // P1.0���
    _enable_interrupt();
	
	return 0;
}

#pragma vector= WDT_VECTOR
__interrupt void watchdog_timer (void) {
    P1OUT ^= 0x01;        // P1.0ȡ��
}
