#include <msp430.h> 

#define XT2_FREQ   4000000
#define MCLK_FREQ 16000000
#define SMCLK_FREQ 4000000

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

/***********************************************************************************
   IO�˿ڳ�ʼ��
    ˵���� �ڴ���LED�ƶ˿������������L1-P8.1;  L2-->P3.7; L3--> P7.4; L4-->P6.3;L5-->P6.4;L6-->P3.5
                 ��е��ť���룬������S1-P1.2;  S2-->P1.3;
***********************************************************************************/

void initLED(void) {
    P8DIR |= 0x02;
    P3DIR |= 0x80;
    P7DIR |= 0x10;
    P6DIR |= 0x08;
    P6DIR |= 0x10;
    P3DIR |= 0x20;

    P8OUT &= ~ 0x02;
    P3OUT &= ~ 0x80;
    P7OUT &= ~ 0x10;
    P6OUT &= ~ 0x08;
    P6OUT &= ~ 0x10;
    P3OUT &= ~ 0x20;
}

void initGPIO(void) {
    P1DIR &= ~ 0x0C;                     // �����ж�
    P1REN |= 0x0C;                       // S1��P1.2����S2��P1.3��
    P1OUT |= 0x0C;

    P1IE |= 0x0C;
    P1IES |= 0x0C;
    P1IFG &= ~ 0x0C;

    P2DIR &= ~ 0x48;
    P2REN |= 0x48;                       // S3��P2.3����S4��P2.6��
    P2OUT |= 0x48;

    P2IE |= 0x48;
    P2IES |= 0x48;
    P2IFG &= ~ 0x48;
}

void initIO()
{
    P2DIR |= 0x34;
    initLED();
    initGPIO();
    P2OUT &= ~ 0x04;
}

int main(void)
{
    unsigned int Period = 512;                      // PWM Period
    unsigned int duty = 0;                          // PWM duty cycle (%)

    WDTCTL = WDTPW | WDTHOLD;                       // Stop watchdog timer
    _enable_interrupt();
    initClock();
    initIO();

    P1DIR |= 0x20;
    P1OUT |= 0x20;                                  // nsleep ��ͨ
    P2DIR |= 0x30;                                  // P2.4 and P2.5 output
    P2OUT &= ~ 0x20;
    P2SEL |= 0x30;                                  // P2.4 and P2.5 options select

    TA2CCR0 = Period + 1;                           // PWM Period
    TA2CCTL1 = OUTMOD_6;                            // CCR1 toggle/set
    TA2CCR1 = Period * duty / 100;                  // CCR1 PWM duty cycle
    TA2CCTL2 = OUTMOD_6;                            // CCR2 toggle/set
    TA2CCR2 = 0;                                    // CCR2 PWM duty cycle
    TA2CTL = TASSEL_2 + MC_3 + TACLR;               // SMCLK, up-down mode, clear TAR

//  __no_operation();                               // For debugger

    int c = 1;
    while(1)
    {
        duty += c;
        if (duty >= 100 || duty <= 0) {
             c *= -1;
        }
        TA2CCR1 = Period * duty / 100;              // CCR1 PWM duty cycle
        _delay_cycles(MCLK_FREQ * 0.02);
    }
}

#pragma vector=PORT1_VECTOR
__interrupt void Port_1_Key(void) {
    if (P1IFG & 0x04) {
        P1OUT ^= 0x20;
        P2OUT ^= 0x20;
        P8OUT ^= 0x02;
        P1IFG &= ~ 0x04;
    }
    if (P1IFG & 0x08) {
        P3OUT ^= 0x80;
        P1IFG &= ~ 0x08;
    }
}

