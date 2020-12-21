#include <msp430.h> 
#include "key.h"

#define uint16 unsigned int
/*
 * main.c
 */
// ʱ��ΪACLK(WDTSSEL0=0x0020), ģʽΪ�����ʱ��(WDTTMSEL=0x0010)
//#define WDT_ADLY_1000 (WDTPW+WDTTMSEL+WDTCNTCL+WDTIS2+WDTSSEL0)  1s=1000ms
int main(void)
{
	WDTCTL = WDT_ADLY_1000;
    //WDTCTL = WDT_ADLY_250;
	IO_Init();
             ;      	  // �������Ź��ж�// ʹ��WDT�ж�

	__enable_interrupt();     // ϵͳ�ж�����GIEλ��SR״̬�Ĵ�����
	while(1)
	{
		ScanKey();														//����ɨ��
		if(KeyFlag.S1==1)
		{
			KeyFlag.S1=0;
			WDTCTL = WDT_ADLY_1000;										//ι��
		}

	}
}
/************************���Ź��жϺ���********************************/
#pragma vector=WDT_VECTOR
__interrupt void WDT_ISR(void)
{
	       ;		      //LED1��ת��1s��תһ�Σ�����Ϊ����˸
}

