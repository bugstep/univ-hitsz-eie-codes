#include <msp430.h> 

#define CPU_F          ((double)1000000)
#define delay_ms(x)    _delay_cycles((long)(CPU_F*(double)x/1000.0))

#define MAX_NOTE 300

void set_frequency(int x) {
    if (x == 0) {
        TA0CCTL0 &= ~ 0x0011;
    } else {
        TA0CCTL0 |= 0x0010;
    }

    int f[4][7] = {{'C', 'D', 'E', 'F', 'G', 'A', 'B'},
                // {251, 223, 199, 188, 167, 149, 133},
                   {125, 112, 99,  94,  84,  74,  66 },
                   {63,  56,  50,  47,  42,  37,  33 },
                   {31,  28,  25,  23,  21,  19,  17 }};
    TA0CCR0 = f[x / 10][x % 10 - 1];
}

int song[MAX_NOTE] = {11, 12, 13, 14, 15, 16, 17, 0, 0, 0, 21, 22, 23, 24, 25, 26, 27, 0, 0, 0, 31, 32, 33, 34, 35, 36, 37,};
int pos = 0;
char flag = 0;

void init2() {
    WDTCTL = WDT_ADLY_250;               // 定时周期为250ms
    SFRIE1 |= WDTIE;                     // 使能WDT中断
    P1DIR |= BIT0;                       // P1.0输出

    TA0CTL = 0x0110;                     // 选择ACLK时钟及增计数模式(32768)
    TA0CCR0 = 32768;                     // CCR0计数
    TA0CCTL0 &= ~ 0x0011;                // 禁止计数器中断

                                         // 初始化LED及蜂鸣器
    P8DIR |= 0x02;                       // L1（P8.1）
    P3DIR |= 0xE0;                       // L2（P3.7），L6（P3.5），蜂鸣器（P3.6）
    P6DIR |= 0x18;                       // L4（P6.3），L5（P6.4）
    P7DIR |= 0x10;                       // L3（P7.4）

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
}

int main(void)
{
    _enable_interrupts();                // 打开全局中断

    init2();

    return 0;
}

#pragma vector=PORT1_VECTOR
__interrupt void Port_1_Key(void) {
    if (P1IFG & 0x04) {                  // S1中断

        P1IFG &= ~ 0x04;                 // 关中断标志
        delay_ms(100);
    }
    if (P1IFG & 0x08) {                  // S2中断


        P1IFG &= ~ 0x08;                 // 关中断标志
        delay_ms(100);
    }
}

#pragma vector=PORT2_VECTOR
__interrupt void Port_2_Key(void) {
    if (P2IFG & 0x08) {                  // S3中断
        flag = 1;
        pos = 0;
        P2IFG &= ~ 0x08;                 // 关中断标志
        delay_ms(100);
    }
    if (P2IFG & 0x40) {                  // S4中断
        flag = 0;
        TA0CCTL0 &= ~ 0x0010;            // 禁止计数器中断
        P2IFG &= ~ 0x40;                 // 关中断标志
        delay_ms(100);
    }
}

#pragma vector=TIMER0_A0_VECTOR
__interrupt void Timer_A0(void) {        // CCR0中断

    P3OUT ^= 0x40;                       // 蜂鸣器
}

#pragma vector= WDT_VECTOR
__interrupt void watchdog_timer (void) {
    P1OUT ^= 0x01;                       // P1.0取反

    if (flag) {
        if (pos > MAX_NOTE) {
            pos = 0;
        }
        set_frequency(song[pos++]);
    }


}

