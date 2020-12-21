#include <msp430.h> 


void ioinit()
{
    P6DIR |= 0x18;            //����GPIO����P6.3(A3)��P6.4(A4)Ϊ�������
    P3DIR |= 0xA0;            //����GPIO����P3.5(TB0.5)��P3.7(TB0OUTH/SVMOUT)Ϊ�������
    P7DIR |= 0x10;            //����GPIO����P7.4(TB0.2)Ϊ�������
    P8DIR |= 0x01;            //����GPIO����P8.1Ϊ�������
}
void AD_Init()
{   // ��ADC12ENC==0ʱ��Ĭ�ϣ�,��ʼ�����Ĵ��������ADCת��ʹ�ܣ�ADC12ENC==1��
    //��·����ת�����״���ҪSHI�ź������ش���������ʱ�����Զ�ѭ������ת����ADC12MSC
    ADC12CTL0 |= ADC12MSC;

    //�������򿪣�ADC12ģ�飬ADC12ON
    ADC12CTL0 |= ADC12ON;

    //ѡ��ͨ��ѭ������ת����10B,��ͨ���ظ�ת��ģʽ
    ADC12CTL1 |= ADC12CONSEQ1 ;

    //��������ģʽѡ��ѡ������źţ�SAMPCON������Դ�ǲ�����ʱ��
    ADC12CTL1 |= ADC12SHP;

    //ѡ��ͨ��A5,P6.5���Ӳ����λ����GPIOĬ�Ϸ��������뷽�򣩣�ADC12INCH_5
    ADC12MCTL0 |= ADC12INCH_5;

    //ADCת��ʹ�� ADC12ENC
    ADC12CTL0 |= ADC12ENC;
}

void initClock()
{    //����Ч����MCLK:16MHZ,SMCLK:8MHZ,ACLK:32KHZ
     UCSCTL6 &= ~XT1OFF;          //����XT1
     P5SEL |= BIT2 + BIT3;        //XT2���Ź���ѡ��
     UCSCTL6 &= ~XT2OFF;          //��XT2

     //����ϵͳʱ��������1,FLL control loop�ر�SCG0=1,�ر���Ƶ�����û��Զ���UCSCTL0~1����ģʽ
     __bis_SR_register(SCG0);

     //�ֶ�ѡ��DCOƵ�ʽ��ݣ�8�ֽ��ݣ���ȷ��DCOƵ�ʴ��·�Χ��
     UCSCTL0 = DCO0+DCO1+DCO2+DCO3+DCO4;
     //DCOƵ�ʷ�Χ��28.2MHz���£�DCOƵ�ʷ�Χѡ������bitλ���ı�ֱ����������ѹ�������ı�DCO���Ƶ�ʣ�
     UCSCTL1 = DCORSEL_4;
     //fDCOCLK/32����Ƶ����Ƶ��
     UCSCTL2 = FLLD_5;

     //n=8,FLLREFCLKʱ��ԴΪXT2CLK
     //DCOCLK=D*(N+1)*(FLLREFCLK/n)
     //DCOCLKDIV=(N+1)*(FLLREFCLK/n)
     UCSCTL3 = SELREF_5 + FLLREFDIV_3;
     //ACLK��ʱ��ԴΪDCOCLKDIV,MCLK\SMCLK��ʱ��ԴΪDCOCLK
     UCSCTL4 = SELA_4 + SELS_3 +SELM_3;
     //ACLK��DCOCLKDIV��32��Ƶ�õ���SMCLK��DCOCLK��2��Ƶ�õ�
     UCSCTL5 = DIVA_5 +DIVS_1;

     //  __bic_SR_register(SCG0);   //Enable the FLL control loop
}

int main(void)
{
    WDTCTL = WDTPW | WDTHOLD;   // Stop watchdog timer

    P8DIR |= BIT1;
    P8OUT &=~ BIT1;

    initClock();
    ioinit();
    AD_Init();

    volatile unsigned int value = 0;                                                //�����жϱ���
    while(1)
    {
        ADC12CTL0 |= ADC12SC;                                                       //��ʼ����ת����ADC12SC
        value = ADC12MEM0;                                                          //�ѽ�����������������ADC12MEM0
        if(value > 5)                                                               //�жϽ����Χ
            P8OUT |= 0x02;                                     // LED1��
        else
            P8OUT &= ~ 0x02;                                   // LED1��
        if(value >= 800)
            P3OUT|= 0x80;                                      // LED2��
        else
            P3OUT &= ~ 0x80;                                   // LED2��
        if(value >= 1600)
            P7OUT |= 0x10;                                     // LED3��
        else
            P7OUT &= ~ 0x10;                                   // LED3��
        if(value >= 2400)
            P6OUT |= 0x08;                                     // LED4��
        else
            P6OUT &= ~ 0x08;                                   // LED4��
        if(value >= 3200)
            P6OUT |= 0x10;                                     // LED5��
        else
            P6OUT &= ~ 0x10;                                   // LED5��
        if(value >= 4000)
            P3OUT |= 0x20;                                     // LED6��
        else
            P3OUT &= ~ 0x20;                                   // LED6��
        __delay_cycles(200000);
    }

}
