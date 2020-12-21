#include <msp430.h> 

#define CPU_F          ((double)1000000)
#define delay_ms(x)    _delay_cycles((long)(CPU_F*(double)x/1000.0))


int main(void)
{
    WDTCTL = WDTPW | WDTHOLD;            // 关闭看门狗
    _enable_interrupts();                // 打开全局中断

    TA0CTL = 0x0110;                     // 选择ACLK时钟及增计数模式
    TA0CCR0 = 32768;                     // CCR0计数（总计数）
    TA0CCR1 = 21845;                     // CCR1计数
    TA0CCR2 = 10923;                     // CCR2计数
    TA0CCTL0 &= ~ 0x0011;                // 禁止计数器中断
    TA0CCTL1 &= ~ 0x0011;
    TA0CCTL2 &= ~ 0x0011;
                                         // 初始化LED及蜂鸣器
    P8DIR |= 0x02;                       // L1（P8.1）
    P3DIR |= 0xE0;                       // L2（P3.7），L6（P3.5），蜂鸣器（P3.6）
    P6DIR |= 0x08;                       // L4（P6.3）

    P8OUT &= ~ 0x02;
    P3OUT &= ~ 0xE0;
    P6OUT &= ~ 0x08;

    P1DIR &= ~ 0x0C;                     // 配置中断
    P1REN |= 0x0C;                       // S1（P1.2），S2（P1.3）
    P1OUT |= 0x0C;

    P1IE |= 0x0C;
    P1IES |= 0x0C;
    P1IFG &= ~ 0x0C;

    P2DIR &= ~ 0x48;
    P2REN |= 0x48;                       // S3（P2.3），S4（P2.6）
    P2OUT |= 0x48;

    P2IE |= 0x48;
    P2IES |= 0x48;
    P2IFG &= ~ 0x48;

    P3OUT |= 0x20;                       // 运行状态指示灯L6

	return 0;
}

#pragma vector=PORT1_VECTOR
__interrupt void Port_1_Key(void) {
    if (P1IFG & 0x04) {                  // S1中断
        TA0CCTL1 ^= 0x0010;              // 允许/禁止CCR1中断状态翻转
        P8OUT &= ~ 0x02;
        P3OUT |= 0x20;

        P1IFG &= ~ 0x04;                 // 关中断标志
        delay_ms(100);
    }
    if (P1IFG & 0x08) {                  // S1中断
        TA0CCTL2 ^= 0x0010;              // 允许/禁止CCR2中断状态翻转
        P3OUT &= ~ 0x80;
        P3OUT |= 0x20;

        P1IFG &= ~ 0x08;                 // 关中断标志
        delay_ms(100);
    }
}

#pragma vector=PORT2_VECTOR
__interrupt void Port_2_Key(void) {
    if (P2IFG & 0x08) {                  // S1中断
        TA0CCTL0 ^= 0x0010;              // 允许/禁止CCR0中断状态翻转
        P6OUT &= ~ 0x08;
        P3OUT |= 0x20;

        P2IFG &= ~ 0x08;                 // 关中断标志
        delay_ms(100);
    }
    if (P2IFG & 0x40) {                  // S1中断
        TA0CCTL0 &= ~ 0x0010;            // 全部禁止计数器中断
        TA0CCTL1 &= ~ 0x0010;
        TA0CCTL2 &= ~ 0x0010;

        P8OUT &= ~ 0x02;
        P3OUT &= ~ 0xE0;
        P6OUT &= ~ 0x08;
        P3OUT |= 0x20;

        P2IFG &= ~ 0x40;                 // 关中断标志
        delay_ms(100);
    }
}

#pragma vector=TIMER0_A0_VECTOR
__interrupt void Timer_A0(void) {        // CCR0中断
    P6OUT ^= 0x08;                       // 翻转CCR0指示灯L4
    P3OUT ^= 0x60;                       // 翻转运行状态指示灯L6及蜂鸣器
}

#pragma vector=TIMER0_A1_VECTOR
__interrupt void Timer_A1(void) {
    switch(TA0IV) {                      // 判断中断向量
        case 2:                          // 0x0002为CCR1
            P8OUT ^= 0x02;               // 翻转CCR1指示灯L1
            P3OUT ^= 0x60;               // 翻转运行状态指示灯L6及蜂鸣器
            break;
        case 4:                          // 0x0004为CCR2
            P3OUT ^= 0x80;               // 翻转CCR2指示灯L2
            P3OUT ^= 0x60;               // 翻转运行状态指示灯L6及蜂鸣器
            break;
        default:
            break;
    }
}

