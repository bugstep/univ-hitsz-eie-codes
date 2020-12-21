#include <msp430.h> 

#define CPU_F          ((double)1000000)
#define delay_ms(x)    _delay_cycles((long)(CPU_F*(double)x/1000.0))


int main(void)
{
    _enable_interrupts();                // ��ȫ���ж�

    WDTCTL = WDT_ADLY_250;               // ��ʱ����Ϊ250ms
    SFRIE1 |= WDTIE;                     // ʹ��WDT�ж�
    P1DIR |= BIT0;                       // P1.0���

    TA0CTL = 0x0110;                     // ѡ��ACLKʱ�Ӽ�������ģʽ(32768)
    TA0CCR0 = 32768;                     // CCR0����
    TA0CCTL0 &= ~ 0x0011;                // ��ֹ�������ж�

                                         // ��ʼ��LED��������
    P8DIR |= 0x02;                       // L1��P8.1��
    P3DIR |= 0xE0;                       // L2��P3.7����L6��P3.5������������P3.6��
    P6DIR |= 0x18;                       // L4��P6.3����L5��P6.4��
    P7DIR |= 0x10;                       // L6��P7.4��

    P8OUT &= ~ 0x02;
    P3OUT &= ~ 0xE0;
    P6OUT &= ~ 0x08;

    P1DIR &= ~ 0x0C;                     // �����ж�
    P1REN |= 0x0C;                       // S1��P1.2����S2��P1.3��
    P1OUT |= 0x0C;

    P1IE |= 0x0C;
    P1IES |= 0x0C;
    P1IFG &= ~ 0x0C;

    P2DIR &= ~ 0x48;
    P2REN |= 0x48;                       // S3��P2.3����S4��P2.6��
    P2OUT |= 0x48;

    P2IE |= 0x48;
    P2IES |= 0x48;
    P2IFG &= ~ 0x48;

    return 0;
}

#pragma vector=PORT1_VECTOR
__interrupt void Port_1_Key(void) {
    if (P1IFG & 0x04) {                  // S1�ж�

        P1IFG &= ~ 0x04;                 // ���жϱ�־
        delay_ms(100);
    }
    if (P1IFG & 0x08) {                  // S2�ж�


        P1IFG &= ~ 0x08;                 // ���жϱ�־
        delay_ms(100);
    }
}

#pragma vector=PORT2_VECTOR
__interrupt void Port_2_Key(void) {
    if (P2IFG & 0x08) {                  // S3�ж�
        TA0CCTL0 |= 0x0010;              // ����CCR0�ж�
        P2IFG &= ~ 0x08;                 // ���жϱ�־
        delay_ms(100);
    }
    if (P2IFG & 0x40) {                  // S4�ж�
        TA0CCTL0 &= ~ 0x0010;            // ��ֹ�������ж�
        P2IFG &= ~ 0x40;                 // ���жϱ�־
        delay_ms(100);
    }
}

#pragma vector=TIMER0_A0_VECTOR
__interrupt void Timer_A0(void) {        // CCR0�ж�
    P6OUT ^= 0x08;                       // ��תCCR0ָʾ��L4
    P3OUT ^= 0x60;                       // ��ת����״ָ̬ʾ��L6��������
}

#pragma vector= WDT_VECTOR
__interrupt void watchdog_timer (void) {
    P1OUT ^= 0x01;        // P1.0ȡ��
}

