#include <msp430.h> 

#define XT2_FREQ   4000000
#define MCLK_FREQ 16000000
#define SMCLK_FREQ 4000000


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

void initIO()
{
    P6DIR &= ~ 0x01;          // 配置GPIO引脚P6.1为输出方向
    P3DIR |= 0xA0;            // 配置GPIO引脚P3.5(TB0.5)、P3.7(TB0OUTH/SVMOUT)为输出方向
    P7DIR |= 0x10;            // 配置GPIO引脚P7.4(TB0.2)为输出方向
    P8DIR |= 0x01;            // 配置GPIO引脚P8.1为输出方向

    P2DIR |= BIT2 + BIT4 + BIT5;
    P2OUT &= ~ BIT2;

    initLED();
}

void initAD() {
    ADC12CTL0 |= ADC12MSC;              // 自动循环采样转换
    ADC12CTL0 |= ADC12ON;               // 启动ADC12模块
    ADC12CTL1 |= ADC12CONSEQ_3;         // 选择序列通道多次循环采样转换
    ADC12CTL1 |= ADC12SHP;              // 采样保持模式
    ADC12CTL1  |= ADC12CSTARTADD_0;
    ADC12MCTL0 |=ADC12INCH_12;           // 通道选择
    ADC12MCTL1 |=ADC12INCH_1;
    ADC12MCTL2 |=ADC12INCH_2;
    ADC12MCTL3 |=ADC12INCH_3;
    ADC12MCTL4 |=ADC12INCH_4;
    ADC12MCTL5 |=ADC12INCH_5+ADC12EOS;
    ADC12CTL0 |= ADC12ENC;
}


void initClock()
{
     UCSCTL6 &= ~ XT1OFF;                           // 启动XT1
     P5SEL |= BIT2 + BIT3;                          // XT2引脚功能选择
     UCSCTL6 &= ~ XT2OFF;                           // 打开XT2
     _bis_SR_register(SCG0);
     UCSCTL0 = DCO0 + DCO1 + DCO2 + DCO3 + DCO4;
     UCSCTL1 = DCORSEL_4;                           // DCO频率范围在28.2MHZ以下
     UCSCTL2 = FLLD_5 + 1;                          // D=16，N=1
     UCSCTL3 = SELREF_5 + FLLREFDIV_3;              // n=8,FLLREFCLK时钟源为XT2CLK；DCOCLK=D*(N+1)*(FLLREFCLK/n);DCOCLKDIV=(N+1)*(FLLREFCLK/n);
     UCSCTL4 = SELA_4 + SELS_3 + SELM_3;            // ACLK的时钟源为DCOCLKDIV,MCLK\SMCLK的时钟源为DCOCLK
     UCSCTL5 = DIVA_5 + DIVS_1;                     // ACLK由DCOCLKDIV的32分频得到，SMCLK由DCOCLK的2分频得到
                                                    // 最终MCLK:16MHZ,SMCLK:8MHZ,ACLK:32KHZ
//   __bic_SR_register(SCG0);                       // Enable the FLL control loop
}

unsigned value_filter(char n) {
    char count;
    unsigned min = -1, max = 0, sum = 0;
    volatile unsigned int value_buf = 0;                                            // 设置判断变量
    for (count = 0; count < n; count++) {
        ADC12CTL0 |= ADC12SC;                                                       // 开始采样转换，ADC12SC
        value_buf = ADC12MEM0;                                                      // 把结果赋给变量，结果在ADC12MEM0
        sum += value_buf;
        if (value_buf < min) {
            min = value_buf;
        }
        if (value_buf > max) {
            max = value_buf;
        }
    }
    return (sum - min - max) / (n - 2);
}

int main(void)
{
    WDTCTL = WDTPW | WDTHOLD;                       // Stop watchdog timer
    unsigned int Period = 512;                      // PWM Period
    unsigned int duty = 0, value = 0;;              // PWM duty cycle (%)

    P8DIR |= BIT1;
    P8OUT &= ~ BIT1;

    initClock();
    initIO();
    initAD();

    P1DIR |= BIT5;
    P1OUT |= BIT5;                                  // nsleep 导通

    P2DIR |= BIT4 + BIT5;                           // P2.4 and P2.5 output
    P2OUT &= ~ BIT5;
    P2SEL |= BIT4 + BIT5;                           // P2.4 and P2.5 options select

    TA2CCR0 = Period + 1;                           // PWM Period
    TA2CCTL1 = OUTMOD_6;                            // CCR1 toggle/set
    TA2CCR1 = Period * duty / 100;                  // CCR1 PWM duty cycle
    TA2CCTL2 = OUTMOD_6;                            // CCR2 toggle/set
    TA2CCR2 = 0;                                    // CCR2 PWM duty cycle
    TA2CTL = TASSEL_2 + MC_3 + TACLR;               // SMCLK, up-down mode, clear TAR

    while(1) {
        value = value_filter(10) - 2000;
        duty = value / 20;
        P8OUT &= ~ 0x02;
        P3OUT &= ~ 0x80;
        P7OUT &= ~ 0x10;
        P6OUT &= ~ 0x08;
        P6OUT &= ~ 0x10;
        P3OUT &= ~ 0x20;
        switch (value / 400) {
            case 5:
                P3OUT |= 0x20;
            case 4:
                 P6OUT |= 0x10;
            case 3:
                P6OUT |= 0x08;
            case 2:
                P7OUT |= 0x10;
            case 1:
                P3OUT |= 0x80;
            case 0:
                P8OUT |= 0x02;
            default:
                break;
        }
        TA2CCR1 = Period * duty / 100;              // CCR1 PWM duty cycle
    }
}



