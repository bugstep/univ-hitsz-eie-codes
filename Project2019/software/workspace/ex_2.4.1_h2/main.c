#include <msp430.h> 


/**
 * main.c
 */
int main(void)
{

        WDTCTL = WDTPW + WDTHOLD;                // 关闭看门狗
        P2DIR |= BIT2;                           // SMCLK 通过 P2.2输出，输出方向
        P2SEL |= BIT2;                           // P2.2 为外设功能（SMCLK ）
        P5SEL |= BIT2 + BIT3+BIT4+BIT5;          // 选择IO端口功能为 XT2，外设功能
        UCSCTL6 &= ~ (XT2OFF+XT1OFF);            // 使能 XT2，设置寄存器UCSCTL6
        UCSCTL6 |= XT2DRIVE_0+XCAP_3;            // 配置内接电容值，选择典型电容值XT2DRIVE_0
        do {                                     // 清零XT2、DCO故障标志位
            UCSCTL7 &= ~ (XT2OFFG + DCOFFG);
            SFRIFG1 &= ~ OFIFG;                  // 清零SFR中的故障标志位
        } while (SFRIFG1 & OFIFG);               // 检测振荡器故障标志位
        UCSCTL4 |= SELS_0 + SELA_0;                // 选择 SMCLK的时钟源，设置寄存器UCSCTL4




        while(1) {}

	
	return 0;
}
