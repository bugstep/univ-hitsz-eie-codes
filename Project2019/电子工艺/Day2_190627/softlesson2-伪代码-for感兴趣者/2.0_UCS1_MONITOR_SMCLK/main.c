#include <msp430.h> 

void main(void)
{
 	WDTCTL = WDTPW + WDTHOLD;  	// 关闭看门狗
  	P1DIR |= BIT0;           	// ACLK 通过 P1.0输出
  	P1SEL |= BIT0;              // P1.0选择外设功能
    P5SEL |= BIT4+BIT5;         // 选择端口功能为 XT1
    UCSCTL6 &= ~(XT1OFF);   	// 使能 XT1
    UCSCTL6 |= XCAP_3;         	// 配置内接电容值
                                // 选择典型值XCAP_3，2、6、9、12pF负载电容选择12pF典型值
    P2DIR |= BIT2;              // SMCLK 通过 P2.2输出
    P2SEL |= BIT2;
    P5SEL |= BIT2+BIT3;         // 选择端口功能为 XT2
    UCSCTL6 &= ~(XT2OFF);       // 使能 XT2

    do
    {
      	UCSCTL7 &= ~(XT1LFOFFG + XT2OFFG + DCOFFG);	// 清零XT1、XT2、DCO故障标志位
        SFRIFG1 &= ~OFIFG;          // 清零SFR中的故障标志位
    }while (SFRIFG1&OFIFG);         // 检测振荡器故障标志位

    UCSCTL6 &= ~XT2DRIVE0;

    UCSCTL4 |= SELA_0 + SELS_5;     // 选择ACLK(XT1CLK)的时钟源,选择SMCLK(XT2CLK)的时钟源
//    UCSCTL4 |= SELA_0;              // 选择ACLK(XT1CLK)的时钟源,如果不选择SMCLK的时钟源，默认输出是多少频率？

    while(1)
    {
    		;                 		// 循环等待,空操作
    }
}
