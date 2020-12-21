#include <msp430.h> 
#include "key.h"

#define uint16 unsigned int
/*
 * main.c
 */
// 时钟为ACLK(WDTSSEL0=0x0020), 模式为间隔定时器(WDTTMSEL=0x0010)
//#define WDT_ADLY_1000 (WDTPW+WDTTMSEL+WDTCNTCL+WDTIS2+WDTSSEL0)  1s=1000ms
int main(void)
{
	WDTCTL = WDT_ADLY_1000;
    //WDTCTL = WDT_ADLY_250;
	IO_Init();
             ;      	  // 开启看门狗中断// 使能WDT中断

	__enable_interrupt();     // 系统中断允许GIE位（SR状态寄存器）
	while(1)
	{
		ScanKey();														//按键扫描
		if(KeyFlag.S1==1)
		{
			KeyFlag.S1=0;
			WDTCTL = WDT_ADLY_1000;										//喂狗
		}

	}
}
/************************看门狗中断函数********************************/
#pragma vector=WDT_VECTOR
__interrupt void WDT_ISR(void)
{
	       ;		      //LED1翻转，1s翻转一次，表现为灯闪烁
}

