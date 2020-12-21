#include <msp430.h> 

/**
 * main.c
 */

int main(void)
{
    WDTCTL = WDTPW + WDTHOLD;                // 关闭看门狗
    P1DIR |= BIT0;                           // ACLK 通过 P1.0输出，输出方向
    P1SEL |= BIT0;                           // P1.0 为外设功能（ACLK ）
    P5SEL |= BIT4+BIT5;                      // 选择IO端口功能为 XT1，外设功能
    UCSCTL6 &= ~ XT1OFF;                     // 使能 XT1，设置寄存器UCSCTL6
    UCSCTL6 |= XCAP_3;                       // 配置内接电容值，选择典型电容值XCAP_3
    do {                                     // 清零XT1、DCO故障标志位
        UCSCTL7 &= ~ (XT1LFOFFG + DCOFFG);
        SFRIFG1 &= ~ OFIFG;                  // 清零SFR中的故障标志位
    } while (SFRIFG1 & OFIFG);               // 检测振荡器故障标志位
    UCSCTL4 |= SELA_0;                       // 选择 ACLK的时钟源，设置寄存器UCSCTL4
    while(1) {}
	return 0;
}
