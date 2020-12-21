#include <msp430.h> 

void main(void)
{
 	WDTCTL = WDTPW + WDTHOLD;  	// �رտ��Ź�
  	P1DIR |= BIT0;           	// ACLK ͨ�� P1.0���
  	P1SEL |= BIT0;              // P1.0ѡ�����蹦��
    P5SEL |= BIT4+BIT5;         // ѡ��˿ڹ���Ϊ XT1
    UCSCTL6 &= ~(XT1OFF);   	// ʹ�� XT1
    UCSCTL6 |= XCAP_3;         	// �����ڽӵ���ֵ
                                // ѡ�����ֵXCAP_3��2��6��9��12pF���ص���ѡ��12pF����ֵ
    P2DIR |= BIT2;              // SMCLK ͨ�� P2.2���
    P2SEL |= BIT2;
    P5SEL |= BIT2+BIT3;         // ѡ��˿ڹ���Ϊ XT2
    UCSCTL6 &= ~(XT2OFF);       // ʹ�� XT2

    do
    {
      	UCSCTL7 &= ~(XT1LFOFFG + XT2OFFG + DCOFFG);	// ����XT1��XT2��DCO���ϱ�־λ
        SFRIFG1 &= ~OFIFG;          // ����SFR�еĹ��ϱ�־λ
    }while (SFRIFG1&OFIFG);         // ����������ϱ�־λ

    UCSCTL6 &= ~XT2DRIVE0;

    UCSCTL4 |= SELA_0 + SELS_5;     // ѡ��ACLK(XT1CLK)��ʱ��Դ,ѡ��SMCLK(XT2CLK)��ʱ��Դ
//    UCSCTL4 |= SELA_0;              // ѡ��ACLK(XT1CLK)��ʱ��Դ,�����ѡ��SMCLK��ʱ��Դ��Ĭ������Ƕ���Ƶ�ʣ�

    while(1)
    {
    		;                 		// ѭ���ȴ�,�ղ���
    }
}
