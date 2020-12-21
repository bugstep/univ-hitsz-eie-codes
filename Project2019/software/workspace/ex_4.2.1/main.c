#include <msp430.h> 

#define XT2_FREQ   4000000
#define MCLK_FREQ 16000000
#define SMCLK_FREQ 4000000

void initIO()
{
    P6DIR |= 0x18;            //����GPIO����P6.3(A3)��P6.4(A4)Ϊ�������
    P3DIR |= 0xA0;            //����GPIO����P3.5(TB0.5)��P3.7(TB0OUTH/SVMOUT)Ϊ�������
    P7DIR |= 0x10;            //����GPIO����P7.4(TB0.2)Ϊ�������
    P8DIR |= 0x01;            //����GPIO����P8.1Ϊ�������

    P2DIR |= BIT2 + BIT4 + BIT5;
    P2OUT &= ~ BIT2;
}
void initAD()
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
{
     UCSCTL6 &= ~ XT1OFF;                           // ����XT1
     P5SEL |= BIT2 + BIT3;                          // XT2���Ź���ѡ��
     UCSCTL6 &= ~ XT2OFF;                           // ��XT2
     _bis_SR_register(SCG0);
     UCSCTL0 = DCO0 + DCO1 + DCO2 + DCO3 + DCO4;
     UCSCTL1 = DCORSEL_4;                           // DCOƵ�ʷ�Χ��28.2MHZ����
     UCSCTL2 = FLLD_5 + 1;                          // D=16��N=1
     UCSCTL3 = SELREF_5 + FLLREFDIV_3;              // n=8,FLLREFCLKʱ��ԴΪXT2CLK��DCOCLK=D*(N+1)*(FLLREFCLK/n);DCOCLKDIV=(N+1)*(FLLREFCLK/n);
     UCSCTL4 = SELA_4 + SELS_3 + SELM_3;            // ACLK��ʱ��ԴΪDCOCLKDIV,MCLK\SMCLK��ʱ��ԴΪDCOCLK
     UCSCTL5 = DIVA_5 + DIVS_1;                     // ACLK��DCOCLKDIV��32��Ƶ�õ���SMCLK��DCOCLK��2��Ƶ�õ�
                                                    // ����MCLK:16MHZ,SMCLK:8MHZ,ACLK:32KHZ
//   __bic_SR_register(SCG0);                       // Enable the FLL control loop
}

int main(void)
{
    WDTCTL = WDTPW | WDTHOLD;   // Stop watchdog timer
    unsigned int Period = 512;                      // PWM Period
    unsigned int duty = 0;                          // PWM duty cycle (%)

    P8DIR |= BIT1;
    P8OUT &= ~ BIT1;

    initClock();
    initIO();
    initAD();

    P1DIR |= BIT5;
    P1OUT |= BIT5;                                  // nsleep ��ͨ

    P2DIR |= BIT4 + BIT5;                           // P2.4 and P2.5 output
    P2OUT &= ~ BIT5;
    P2SEL |= BIT4 + BIT5;                           // P2.4 and P2.5 options select

    TA2CCR0 = Period + 1;                           // PWM Period
    TA2CCTL1 = OUTMOD_6;                            // CCR1 toggle/set
    TA2CCR1 = Period * duty / 100;                  // CCR1 PWM duty cycle
    TA2CCTL2 = OUTMOD_6;                            // CCR2 toggle/set
    TA2CCR2 = 0;                                    // CCR2 PWM duty cycle
    TA2CTL = TASSEL_2 + MC_3 + TACLR;               // SMCLK, up-down mode, clear TAR

    volatile unsigned int value = 0;                                                //�����жϱ���
    while(1)
    {
        ADC12CTL0 |= ADC12SC;                                                       //��ʼ����ת����ADC12SC
        value = ADC12MEM0;                                                          //�ѽ�����������������ADC12MEM0
        switch (value/800) {
            case 0:
                duty = 15;
                break;
            case 1:
                duty = 30;
                break;
            case 2:
                duty = 45;
                break;
            case 3:
                duty = 60;
                break;
            case 4:
                duty = 80;
                break;
            case 5:
                duty = 100;
                break;
            default:
                duty = 0;
                break;
        }
        TA2CCR1 = Period * duty / 100;              // CCR1 PWM duty cycle
        _delay_cycles(MCLK_FREQ * 0.02);
    }

}
