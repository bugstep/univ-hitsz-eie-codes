#include <msp430.h>

int main(void)
{
  WDTCTL = WDTPW + WDTHOLD;                 // �رտ��Ź�
  P8DIR |=  BIT1;                           // ����P8.1�ڷ���Ϊ���
  P8OUT &= ~BIT1;

                ;                           // ʹ��P1.2��������
                ;                           // P1.2���øߵ�ƽ

  P1IES &= ~BIT2;                           // �ж������ã��½��ش�����
  P1IFG &= ~BIT2;                           // ��P1.2�жϱ�־
  P1IE  |=  BIT2;                           // ʹ��P1.2���ж�

  __bis_SR_register(LPM4_bits + GIE);       // ����͹���ģʽ4 ���ж�
  __no_operation();		   	                // �ղ���
}

// P1�жϺ���
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
	             ;                          //�ı�LED1��״̬��LED�Ʒ�ת��
	             ;                          //��P1.2�жϱ�־λ
}

// P1�жϺ���
#pragma vector=PORT2_VECTOR
__interrupt void Port_2(void)
{

	             ;                          //�ı�LED1��״̬��LED�Ʒ�ת��
	             ;                          //��P1.2�жϱ�־λ
}
