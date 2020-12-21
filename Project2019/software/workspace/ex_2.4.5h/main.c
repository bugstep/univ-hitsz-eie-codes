#include <msp430.h> 

#define CPU_F          ((double)1000000)
#define delay_ms(x)    _delay_cycles((long)(CPU_F*(double)x/1000.0))


int main(void)
{
    WDTCTL = WDTPW | WDTHOLD;            // �رտ��Ź�
    _enable_interrupts();                // ��ȫ���ж�

    TA0CTL = 0x0110;                     // ѡ��ACLKʱ�Ӽ�������ģʽ
    TA0CCR0 = 32768;                     // CCR0�������ܼ�����
    TA0CCR1 = 21845;                     // CCR1����
    TA0CCR2 = 10923;                     // CCR2����
    TA0CCTL0 &= ~ 0x0011;                // ��ֹ�������ж�
    TA0CCTL1 &= ~ 0x0011;
    TA0CCTL2 &= ~ 0x0011;
                                         // ��ʼ��LED��������
    P8DIR |= 0x02;                       // L1��P8.1��
    P3DIR |= 0xE0;                       // L2��P3.7����L6��P3.5������������P3.6��
    P6DIR |= 0x08;                       // L4��P6.3��

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

    P3OUT |= 0x20;                       // ����״ָ̬ʾ��L6

	return 0;
}

#pragma vector=PORT1_VECTOR
__interrupt void Port_1_Key(void) {
    if (P1IFG & 0x04) {                  // S1�ж�
        TA0CCTL1 ^= 0x0010;              // ����/��ֹCCR1�ж�״̬��ת
        P8OUT &= ~ 0x02;
        P3OUT |= 0x20;

        P1IFG &= ~ 0x04;                 // ���жϱ�־
        delay_ms(100);
    }
    if (P1IFG & 0x08) {                  // S1�ж�
        TA0CCTL2 ^= 0x0010;              // ����/��ֹCCR2�ж�״̬��ת
        P3OUT &= ~ 0x80;
        P3OUT |= 0x20;

        P1IFG &= ~ 0x08;                 // ���жϱ�־
        delay_ms(100);
    }
}

#pragma vector=PORT2_VECTOR
__interrupt void Port_2_Key(void) {
    if (P2IFG & 0x08) {                  // S1�ж�
        TA0CCTL0 ^= 0x0010;              // ����/��ֹCCR0�ж�״̬��ת
        P6OUT &= ~ 0x08;
        P3OUT |= 0x20;

        P2IFG &= ~ 0x08;                 // ���жϱ�־
        delay_ms(100);
    }
    if (P2IFG & 0x40) {                  // S1�ж�
        TA0CCTL0 &= ~ 0x0010;            // ȫ����ֹ�������ж�
        TA0CCTL1 &= ~ 0x0010;
        TA0CCTL2 &= ~ 0x0010;

        P8OUT &= ~ 0x02;
        P3OUT &= ~ 0xE0;
        P6OUT &= ~ 0x08;
        P3OUT |= 0x20;

        P2IFG &= ~ 0x40;                 // ���жϱ�־
        delay_ms(100);
    }
}

#pragma vector=TIMER0_A0_VECTOR
__interrupt void Timer_A0(void) {        // CCR0�ж�
    P6OUT ^= 0x08;                       // ��תCCR0ָʾ��L4
    P3OUT ^= 0x60;                       // ��ת����״ָ̬ʾ��L6��������
}

#pragma vector=TIMER0_A1_VECTOR
__interrupt void Timer_A1(void) {
    switch(TA0IV) {                      // �ж��ж�����
        case 2:                          // 0x0002ΪCCR1
            P8OUT ^= 0x02;               // ��תCCR1ָʾ��L1
            P3OUT ^= 0x60;               // ��ת����״ָ̬ʾ��L6��������
            break;
        case 4:                          // 0x0004ΪCCR2
            P3OUT ^= 0x80;               // ��תCCR2ָʾ��L2
            P3OUT ^= 0x60;               // ��ת����״ָ̬ʾ��L6��������
            break;
        default:
            break;
    }
}

