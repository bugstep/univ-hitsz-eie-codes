#include <msp430.h> 


void ioinit()
{
    P6DIR |= 0x18;            //配置GPIO引脚P6.3(A3)、P6.4(A4)为输出方向
    P3DIR |= 0xA0;            //配置GPIO引脚P3.5(TB0.5)、P3.7(TB0OUTH/SVMOUT)为输出方向
    P7DIR |= 0x10;            //配置GPIO引脚P7.4(TB0.2)为输出方向
    P8DIR |= 0x01;            //配置GPIO引脚P8.1为输出方向
}
void AD_Init()
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
{    //最终效果：MCLK:16MHZ,SMCLK:8MHZ,ACLK:32KHZ
     UCSCTL6 &= ~XT1OFF;          //启动XT1
     P5SEL |= BIT2 + BIT3;        //XT2引脚功能选择
     UCSCTL6 &= ~XT2OFF;          //打开XT2

     //设置系统时钟生成器1,FLL control loop关闭SCG0=1,关闭锁频环，用户自定义UCSCTL0~1工作模式
     __bis_SR_register(SCG0);

     //手动选择DCO频率阶梯（8种阶梯），确定DCO频率大致范围。
     UCSCTL0 = DCO0+DCO1+DCO2+DCO3+DCO4;
     //DCO频率范围在28.2MHz以下，DCO频率范围选择（三个bit位，改变直流发生器电压，进而改变DCO输出频率）
     UCSCTL1 = DCORSEL_4;
     //fDCOCLK/32，锁频环分频器
     UCSCTL2 = FLLD_5;

     //n=8,FLLREFCLK时钟源为XT2CLK
     //DCOCLK=D*(N+1)*(FLLREFCLK/n)
     //DCOCLKDIV=(N+1)*(FLLREFCLK/n)
     UCSCTL3 = SELREF_5 + FLLREFDIV_3;
     //ACLK的时钟源为DCOCLKDIV,MCLK\SMCLK的时钟源为DCOCLK
     UCSCTL4 = SELA_4 + SELS_3 +SELM_3;
     //ACLK由DCOCLKDIV的32分频得到，SMCLK由DCOCLK的2分频得到
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

    volatile unsigned int value = 0;                                                //设置判断变量
    while(1)
    {
        ADC12CTL0 |= ADC12SC;                                                       //开始采样转换，ADC12SC
        value = ADC12MEM0;                                                          //把结果赋给变量，结果在ADC12MEM0
        if(value > 5)                                                               //判断结果范围
            P8OUT |= 0x02;                                     // LED1亮
        else
            P8OUT &= ~ 0x02;                                   // LED1灭
        if(value >= 800)
            P3OUT|= 0x80;                                      // LED2亮
        else
            P3OUT &= ~ 0x80;                                   // LED2灭
        if(value >= 1600)
            P7OUT |= 0x10;                                     // LED3亮
        else
            P7OUT &= ~ 0x10;                                   // LED3灭
        if(value >= 2400)
            P6OUT |= 0x08;                                     // LED4亮
        else
            P6OUT &= ~ 0x08;                                   // LED4灭
        if(value >= 3200)
            P6OUT |= 0x10;                                     // LED5亮
        else
            P6OUT &= ~ 0x10;                                   // LED5灭
        if(value >= 4000)
            P3OUT |= 0x20;                                     // LED6亮
        else
            P3OUT &= ~ 0x20;                                   // LED6灭
        __delay_cycles(200000);
    }

}
