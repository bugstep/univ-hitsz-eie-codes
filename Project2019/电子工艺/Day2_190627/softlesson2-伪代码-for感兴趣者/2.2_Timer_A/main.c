#include <msp430.h> 
#include "key.h"

unsigned int i=0;

void main(void)
{
	WDTCTL = WDTPW | WDTHOLD;				// Stop watchdog timer
	IO_Init();

  TA0CTL |= MC_1 + TASSEL_2 + TACLR;     	//ʱ��ΪSMCLK,������ģʽ����ʼʱ���������
  TA0CCTL0 =      ;						          //�Ƚ����ж�ʹ��
  TA0CCR0  =      ;	                    //�Ƚ�ֵ��Ϊ50000���൱��50ms��ʱ����
  while(1)
  {
    	ScanKey();							//ɨ�谴������
    	if(KeyFlag.S1==1)
    	{
    		 KeyFlag.S1=0;
    		                    ; // ��ȫ���ж�ʹ��
    	}  
    	if(KeyFlag.S2==1)
		  {
			   KeyFlag.S2=0;
			                      ;	// �ر�ȫ���ж�ʹ��																	
		  }
  }
}
/************************��ʱ���жϺ���********************************/
#pragma vector = TIMER0_A0_VECTOR
__interrupt void Timer_A (void)

{
	  i++;
	  if(i==500)
	  {
	                 ;					//�γ�����Ч��
	                 ;          //�γ�����Ч��
	    i=0;
	  }
}
