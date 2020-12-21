#include <msp430.h> 

#define XT2_FREQ   4000000
#define MCLK_FREQ 16000000
#define SMCLK_FREQ 4000000

void initIO()
{
    P6DIR |= 0x18;            //配置GPIO引脚P6.3(A3)、P6.4(A4)为输出方向
    P3DIR |= 0xA0;            //配置GPIO引脚P3.5(TB0.5)、P3.7(TB0OUTH/SVMOUT)为输出方向
    P7DIR |= 0x10;            //配置GPIO引脚P7.4(TB0.2)为输出方向
    P8DIR |= 0x01;            //配置GPIO引脚P8.1为输出方向

    P2DIR |= BIT2 + BIT4 + BIT5;
    P2OUT &= ~ BIT2;
}
void initAD()
{   // 在ADC12ENC==0时（默认）,初始化各寄存器，后打开ADC转换使能（ADC12ENC==1）
    //多路采样转换（首次需要SHI信号上升沿触发采样定时器）自动循环采样转换，ADC12MSC
    ADC12CTL0 |= ADC12MSC;
    //启动（打开）ADC12模块，ADC12ON
    ADC12CTL0 |= ADC12ON;
    //选择单通道循环采样转换，10B,单通道重复转换模式
    ADC12CTL1 |= ADC12CONSEQ1 ;
    //采样保持模式选择，选择采样信号（SAMPCON）的来源是采样定时器
    ADC12CTL1 |= ADC12SHP;
    //选择通道A5,P6.5连接拨码电位器（GPIO默认方向是输入方向），ADC12INCH_5
    ADC12MCTL0 |= ADC12INCH_5;
    //ADC转换使能 ADC12ENC
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

    volatile unsigned int value = 0;                                                //设置判断变量
    while(1)
    {
        ADC12CTL0 |= ADC12SC;                                                       //开始采样转换，ADC12SC
        value = ADC12MEM0;                                                          //把结果赋给变量，结果在ADC12MEM0
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
