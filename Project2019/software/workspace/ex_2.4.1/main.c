#include <msp430.h> 

/**
 * main.c
 */

int main(void)
{
    WDTCTL = WDTPW + WDTHOLD;                // �رտ��Ź�
    P1DIR |= BIT0;                           // ACLK ͨ�� P1.0������������
    P1SEL |= BIT0;                           // P1.0 Ϊ���蹦�ܣ�ACLK ��
    P5SEL |= BIT4+BIT5;                      // ѡ��IO�˿ڹ���Ϊ XT1�����蹦��
    UCSCTL6 &= ~ XT1OFF;                     // ʹ�� XT1�����üĴ���UCSCTL6
    UCSCTL6 |= XCAP_3;                       // �����ڽӵ���ֵ��ѡ����͵���ֵXCAP_3
    do {                                     // ����XT1��DCO���ϱ�־λ
        UCSCTL7 &= ~ (XT1LFOFFG + DCOFFG);
        SFRIFG1 &= ~ OFIFG;                  // ����SFR�еĹ��ϱ�־λ
    } while (SFRIFG1 & OFIFG);               // ����������ϱ�־λ
    UCSCTL4 |= SELA_0;                       // ѡ�� ACLK��ʱ��Դ�����üĴ���UCSCTL4
    while(1) {}
	return 0;
}
