#include <msp430.h> 


/**
 * main.c
 */
int main(void)
{
    WDTCTL = WDTPW | WDTHOLD;   // stop watchdog timer

    P8DIR |= BIT1;//��ʼ��P8.1Ϊ���
    P3DIR |= BIT6;//��ʼ��P3.6Ϊ���
    TA0CTL |= MC0;  // Timer_A ������ģʽ
    TA0CTL |= TACLR+TASSEL_2;      // SMCLK, ��� TAR

    P1DIR &=~ BIT2;//��ʼ��P1.2Ϊ����
    P1REN |= BIT2;//��ʼ��P1.2Ϊ����������
    P1OUT |= BIT2;//����P1.2Ϊ�ߵ�ƽ

    P1DIR &=~ BIT3;//��ʼ��P1.3Ϊ����
    P1REN |= BIT3;//��ʼ��P1.3Ϊ����������
    P1OUT |= BIT3;//����P1.3Ϊ�ߵ�ƽ

    TA0CCR0 = 0x186A0;     // PWM����
    //TA0CCTL1 |= OUTMOD_7; // ���ģʽ7
    //TA0CCR1 = 0xC350;  //ռ�ձ�384/512=0.75

    P1IE = BIT2;//ʹP1.2���ж�
    P1IES |= BIT2;//�½����ж�
    P1IFG &=~ BIT2;//�ж�

    P1IE = BIT3;//ʹP1.2���ж�
    P1IES |= BIT3;//�½����ж�
    P1IFG &=~ BIT3;//�ж�


    __enable_interrupt();           // ϵͳ�ж�����

    int flag = 0;
    while(1)
    {
        if(!(P1IN&BIT2))
        {
            flag=1;
        }
        if(!(P1IN&BIT3))
        {
            flag=0;
        }

        if(flag)
        {
            TA0CCTL0 |= CCIE;
        }else
        {
            TA0CCTL0 &=~ CCIE;
        }
    }


    return 0;
}
#pragma vector=TIMER0_A0_VECTOR
__interrupt void Timer_A(void)
{
    P8OUT ^= BIT1;
    P3OUT ^= BIT6;
 }

#pragma vector=PORT1_VECTOR
__interrupt void Port_1_Key(void)
{
    if(P1IFG&BIT2)
    {
        P1IFG &=~ BIT2;
        TA0CCTL0 |= CCIE;
    }
    if(P1IFG&BIT3)
    {
            P1IFG &=~ BIT3;
            TA0CCTL0 &=~ CCIE;
    }
}
