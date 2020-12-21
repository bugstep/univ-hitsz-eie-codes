#include <msp430.h> 


/**
 * main.c
 */
int main(void)
{

        WDTCTL = WDTPW + WDTHOLD;                // �رտ��Ź�
        P2DIR |= BIT2;                           // SMCLK ͨ�� P2.2������������
        P2SEL |= BIT2;                           // P2.2 Ϊ���蹦�ܣ�SMCLK ��
        P5SEL |= BIT2 + BIT3+BIT4+BIT5;          // ѡ��IO�˿ڹ���Ϊ XT2�����蹦��
        UCSCTL6 &= ~ (XT2OFF+XT1OFF);            // ʹ�� XT2�����üĴ���UCSCTL6
        UCSCTL6 |= XT2DRIVE_0+XCAP_3;            // �����ڽӵ���ֵ��ѡ����͵���ֵXT2DRIVE_0
        do {                                     // ����XT2��DCO���ϱ�־λ
            UCSCTL7 &= ~ (XT2OFFG + DCOFFG);
            SFRIFG1 &= ~ OFIFG;                  // ����SFR�еĹ��ϱ�־λ
        } while (SFRIFG1 & OFIFG);               // ����������ϱ�־λ
        UCSCTL4 |= SELS_0 + SELA_0;                // ѡ�� SMCLK��ʱ��Դ�����üĴ���UCSCTL4




        while(1) {}

	
	return 0;
}
