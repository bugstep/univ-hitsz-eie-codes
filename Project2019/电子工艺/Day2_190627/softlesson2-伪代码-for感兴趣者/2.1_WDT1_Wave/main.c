#include <msp430.h> 

/**
 * main.c
 */
void main(void)
{
  WDTCTL = WDT_MDLY_32;           // ��ʱ����Ϊ32ms
  SFRIE1 |= WDTIE;                // ʹ��WDT�ж�
  P1DIR |= BIT0;                  // P1.0���

  __enable_interrupt();           // ϵͳ�ж�����

  for (;;)
  {
    // ���� LPM0
    __bis_SR_register(LPM0_bits);
    __no_operation();
  }
}

// ���Ź��жϷ����ӳ���
#pragma vector= WDT_VECTOR
__interrupt void watchdog_timer (void)
{
    P1OUT ^= 0x01;          // P1.0ȡ��
}

// WDTCTL = WDTPW | WDTCNTCL;  // �����Եض�WDTCNT���㣬��ֹWDT_A���
