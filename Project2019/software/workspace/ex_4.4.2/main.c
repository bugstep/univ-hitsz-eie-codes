#include <msp430.h> 

#define XT2_FREQ   4000000
#define MCLK_FREQ 16000000
#define SMCLK_FREQ 4000000


void light_off(void) {
    P8OUT &= ~ 0x02;
    P3OUT &= ~ 0x80;
    P7OUT &= ~ 0x10;
    P6OUT &= ~ 0x08;
    P6OUT &= ~ 0x10;
    P3OUT &= ~ 0x20;
}

void led_on(void) {
    P1OUT |= BIT5;
    P2OUT  &= ~ BIT5;
}

void led_off(void) {
    P1OUT &= ~ BIT5;
    P2OUT |= BIT5;
}

void initGPIO(void) {
    P1DIR &= ~ 0x0C;          // 配置中断
    P1REN |= 0x0C;            // S1（P1.2），S2（P1.3）
    P1OUT |= 0x0C;

    P1IE |= 0x0C;
    P1IES |= 0x0C;
    P1IFG &= ~ 0x0C;

    P2DIR &= ~ 0x48;
    P2REN |= 0x48;            // S3（P2.3），S4（P2.6）
    P2OUT |= 0x48;

    P2IE |= 0x48;
    P2IES |= 0x48;
    P2IFG &= ~ 0x48;
}

void initLED(void) {
    P8DIR |= 0x02;
    P3DIR |= 0x80;
    P7DIR |= 0x10;
    P6DIR |= 0x08;
    P6DIR |= 0x10;
    P3DIR |= 0x20;

    light_off();
}

void initIO()
{
    P6DIR &= ~ 0x03;          // 配置GPIO引脚P6.0、P6.1为输出方向
    P3DIR |= 0xA0;            // 配置GPIO引脚P3.5(TB0.5)、P3.7(TB0OUTH/SVMOUT)为输出方向
    P7DIR |= 0x10;            // 配置GPIO引脚P7.4(TB0.2)为输出方向

    P1DIR |= BIT5;
    P2DIR |= BIT4 + BIT5;     // P2.4 and P2.5 output
    P2SEL |= BIT4 + BIT5;     // P2.4 and P2.5 options select
    led_off();

    initLED();
    initGPIO();
}

void initAD() {
    ADC12CTL0 |= ADC12MSC;                          // 自动循环采样转换
    ADC12CTL0 |= ADC12ON;                           // 启动ADC12模块
    ADC12CTL1 |= ADC12CONSEQ_3;                     // 选择序列通道多次循环采样转换
    ADC12CTL1 |= ADC12SHP;                          // 采样保持模式
    ADC12CTL1  |= ADC12CSTARTADD_0;
    ADC12MCTL0 |= ADC12INCH_0;                      // 麦克风
    ADC12MCTL1 |= ADC12INCH_1;                      // 光敏电阻
    ADC12MCTL5 |= ADC12INCH_5 + ADC12EOS;           // 拨盘
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

unsigned value_filter(char n, int m) {
    char count;
    unsigned min = -1, max = 0, sum = 0;
    volatile unsigned int value_buf = 0;            // 设置判断变量
    for (count = n; count > 0; count--) {
        ADC12CTL0 |= ADC12SC;                       // 开始采样转换，ADC12SC

        switch (m) {
            case 0:
                value_buf = ADC12MEM0;              // 把结果赋给变量，结果在ADC12MEM0
                break;
            case 1:
                value_buf = ADC12MEM1;              // 把结果赋给变量，结果在ADC12MEM1
                break;
            case 5:
                value_buf = ADC12MEM5;              // 把结果赋给变量，结果在ADC12MEM5
                break;
            default:
                break;
        }

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

void voice(void) {
    volatile unsigned int value;

    value = value_filter(10, 0) - 2000;
    light_off();

    switch (value / 400) {
        case 5:
            P3OUT |= 0x20;
        case 4:
            P6OUT |= 0x10;
        case 3:
            P6OUT |= 0x08;
            led_on();
        case 2:
            P7OUT |= 0x10;
            WDTCTL = 0x5A3B;
        case 1:
            P3OUT |= 0x80;
        case 0:
            P8OUT |= 0x02;
        default:
            break;
    }
}

void brightness(void) {
    unsigned int period = 512;                      // PWM Period
    volatile unsigned int duty, value;              // PWM duty cycle (%)

    value = value_filter(10, 1);
    duty = value / 40;

    TA2CCR0 = period + 1;                           // PWM Period
    TA2CCTL1 = OUTMOD_6;                            // CCR1 toggle/set
    TA2CCR1 = period * duty / 100;                  // CCR1 PWM duty cycle
    TA2CCTL2 = OUTMOD_6;                            // CCR2 toggle/set
    TA2CCR2 = 0;                                    // CCR2 PWM duty cycle
    TA2CTL = TASSEL_2 + MC_3 + TACLR;               // SMCLK, up-down mode, clear TAR
}

int main(void)
{
    _enable_interrupt();
    WDTCTL = 0x5A3B;
    SFRIE1 |= WDTIE;

    initClock();
    initIO();
    initAD();

    while (1) {
        voice();
        brightness();
    }
}

#pragma vector=PORT1_VECTOR
__interrupt void Port_1_Key(void) {
    if (P1IFG & 0x04) {
        led_on();
        P1IFG &= ~ 0x04;
    }
    if (P1IFG & 0x08) {
        led_off();
        P1IFG &= ~ 0x08;
    }
}

#pragma vector= WDT_VECTOR
__interrupt void watchdog_timer(void) {
    led_off();
}


