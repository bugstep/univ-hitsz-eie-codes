#include <msp430.h>

int main(void)
{
  WDTCTL = WDTPW + WDTHOLD;                 // 关闭看门狗
  P8DIR |=  BIT1;                           // 设置P8.1口方向为输出
  P8OUT &= ~BIT1;

                ;                           // 使能P1.2上拉电阻
                ;                           // P1.2口置高电平

  P1IES &= ~BIT2;                           // 中断沿设置（下降沿触发）
  P1IFG &= ~BIT2;                           // 清P1.2中断标志
  P1IE  |=  BIT2;                           // 使能P1.2口中断

  __bis_SR_register(LPM4_bits + GIE);       // 进入低功耗模式4 开中断
  __no_operation();		   	                // 空操作
}

// P1中断函数
#pragma vector=PORT1_VECTOR
__interrupt void Port_1(void)
{
    if(P1IFG&BIT0)
    {
    	
    }
    if(P1IFG&BIT1)
    {
    
    }
    if(P1IFG&BIT2) 
    {
    
    
    }   
	             ;                          //改变LED1灯状态（LED灯翻转）
	             ;                          //清P1.2中断标志位
}

// P1中断函数
#pragma vector=PORT2_VECTOR
__interrupt void Port_2(void)
{

	             ;                          //改变LED1灯状态（LED灯翻转）
	             ;                          //清P1.2中断标志位
}
