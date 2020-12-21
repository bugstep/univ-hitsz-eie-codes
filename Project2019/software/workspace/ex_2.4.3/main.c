#include <msp430.h> 

#define CPU_F          ((double)1000000)
#define delay_ms(x)    _delay_cycles((long)(CPU_F*(double)x/1000.0))

int main(void)
{
    _enable_interrupt();

    WDTCTL = WDT_ADLY_1000;
    SFRIE1 |= WDTIE;

    P1DIR &= ~ 0x0C;
    P1REN |= 0x0C;
    P1OUT |= 0x0C;

    P1IE |= 0x0C;
    P1IES |= 0x0C;
    P1IFG &= ~ 0x0C;

    P2DIR &= ~ 0x48;
    P2REN |= 0x48;
    P2OUT |= 0x48;

    P2IE |= 0x48;
    P2IES |= 0x48;
    P2IFG &= ~ 0x48;

    P8DIR |= 0x02;
    P3DIR |= 0x40;

    return 0;
}

#pragma vector= WDT_VECTOR
__interrupt void watchdog_timer (void) {
    P8OUT ^= 0x02;
    P3OUT ^= 0x40;
}

#pragma vector=PORT1_VECTOR
__interrupt void Port_1_Key(void) {
    if (P1IFG & 0x04) {
       P8OUT |= 0x02;
       WDTCTL = WDT_ADLY_1000;
       P1IFG &= ~ 0x04;
       delay_ms(100);
   }
   if (P1IFG & 0x08) {
      WDTCTL = WDT_ADLY_250;
      P1IFG &= ~ 0x08;
      delay_ms(100);
  }
}


#pragma vector=PORT2_VECTOR
__interrupt void Port_2_Key(void) {
    if (P2IFG & 0x40) {
        WDTCTL = WDT_MDLY_0_064;
        P2IFG &= ~ 0x40;
        delay_ms(100);
    }
    if (P2IFG & 0x08) {
       WDTCTL = WDT_MDLY_8;
       P2IFG &= ~ 0x08;
       delay_ms(100);
   }
}
