#include <msp430.h>
#include <stdint.h>
#include "captouch.h"


void initClock()
{
	 // Set up XT1
	P5SEL |= BIT4+BIT5;            // 选择 XT1
	UCSCTL6 &= ~(XT1OFF);          // XT1 开启
	UCSCTL6 |= XCAP_3;             // Internal load cap

	P5SEL |= BIT2 + BIT3; 		   // XT2引脚功能选择
	UCSCTL6 &= ~XT2OFF; 		   // 启动XT2
    while (SFRIFG1 & OFIFG) 	   // 等待XT1、XT2与DCO稳定
    {
       UCSCTL7 &= ~(DCOFFG+XT1LFOFFG+XT2OFFG);
       SFRIFG1 &= ~OFIFG;
    }

    UCSCTL4 = SELA__XT1CLK + SELS__XT2CLK + SELM__XT2CLK; //避免DCO调整中跑飞
    UCSCTL1 = DCORSEL_5; 								  //6000kHz~23.7MHz
    UCSCTL2 = 20000000 / (4000000 / 16);	 			  //XT2频率较高，分频后作为基准可获得更高的精度
    UCSCTL3 = SELREF__XT2CLK + FLLREFDIV__16; 			  //XT2进行16分频后作为基准
    while (SFRIFG1 & OFIFG) 							  //等待XT1、XT2与DCO稳定
    {
       UCSCTL7 &= ~(DCOFFG+XT1LFOFFG+XT2OFFG);
       SFRIFG1 &= ~OFIFG;
    }
    UCSCTL5 = DIVA__1 + DIVS__1 + DIVM__1; 				//设定几个CLK的分频
    UCSCTL4 = SELA__XT1CLK + SELS__DCOCLK + SELM__DCOCLK; //设定几个CLK的时钟源
}



int main( void )
{
	int i,lastflag[2]={0,0};
	WDTCTL = WDTPW + WDTHOLD;					//关闭看门狗防止时间溢出复位
	_DINT();
	initClock();								//初始化始终
	initCapTouch();								//初始化触摸按键
	P2DIR|=BIT2;
	P2OUT&=~BIT2;
	for(i=0;i<2;++i)
		*LED_GPIO[i]->PxDIR |= LED_PORT[i]; 	//设置各LED灯所在端口为输出方向
	_EINT();
	while(1)
	{
		uint32_t temp[2] ={0,0};
		for(i=1;i>=0;i--)
		{
		  temp[i]= CapTouch_ReadChannel(i);	   //测量触摸按键的频率值
		  if((temp[i]>captouch_max)&&(lastflag[i]==0))
		  {									   //当测量值大于门限值时翻转
			  *LED_GPIO[i]->PxOUT ^= LED_PORT[i];//对应的LED指示灯
			  lastflag[i]=1;
		  }
		  else
			  if(!(temp[i]>captouch_max))
			  {
				  lastflag[i]=0;
			  }
		}
		__delay_cycles(8000000);

	}
	return 0;
}
