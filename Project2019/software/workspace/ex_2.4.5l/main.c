#include <msp430.h> 


/**
 * main.c
 */
int main(void)
{
    WDTCTL = WDTPW | WDTHOLD;   // stop watchdog timer

    P8DIR |= BIT1;//初始化P8.1为输出
    P3DIR |= BIT6;//初始化P3.6为输出
    TA0CTL |= MC0;  // Timer_A 增计数模式
    TA0CTL |= TACLR+TASSEL_2;      // SMCLK, 清除 TAR

    P1DIR &=~ BIT2;//初始化P1.2为输入
    P1REN |= BIT2;//初始化P1.2为上下拉电阻
    P1OUT |= BIT2;//设置P1.2为高电平

    P1DIR &=~ BIT3;//初始化P1.3为输入
    P1REN |= BIT3;//初始化P1.3为上下拉电阻
    P1OUT |= BIT3;//设置P1.3为高电平

    TA0CCR0 = 0x186A0;     // PWM周期
    //TA0CCTL1 |= OUTMOD_7; // 输出模式7
    //TA0CCR1 = 0xC350;  //占空比384/512=0.75

    P1IE = BIT2;//使P1.2能中断
    P1IES |= BIT2;//下降沿中断
    P1IFG &=~ BIT2;//中断

    P1IE = BIT3;//使P1.2能中断
    P1IES |= BIT3;//下降沿中断
    P1IFG &=~ BIT3;//中断


    __enable_interrupt();           // 系统中断允许

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
