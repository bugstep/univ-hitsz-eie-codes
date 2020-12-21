#include <msp430.h> 

#define CPU_F          ((double)1000000)
#define delay_ms(x)    _delay_cycles((long)(CPU_F*(double)x/1000.0))

/**
 * main.c
 */
int main(void)
{
    WDTCTL = WDTPW | WDTHOLD;
    _enable_interrupts();

    TA0CTL = 0x0210;
    TA0CCR0 = 50000;
    TA0CCR1 = 233;
    TA0IV = 0x0002;

    P8DIR |= 0x02;
    P3DIR |= 0x40;
    P3DIR |= 0x20;

    P8OUT &= ~ 0x02;
    P3OUT &= ~ 0x40;
    P3OUT |= 0x20;

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

	return 0;
}

#pragma vector=PORT1_VECTOR
__interrupt void Port_1_Key(void) {
    if (P1IFG & 0x04) {
        TA0CCR0 = 50000;
        TA0CCTL1 |= 0x0010;
        P1IFG &= ~ 0x04;
        delay_ms(100);
    }
    if (P1IFG & 0x08) {
       TA0CCTL1 &= ~ 0x0010;
       P8OUT &= ~ 0x02;
       P3OUT &= ~ 0x40;
       P1IFG &= ~ 0x08;
       delay_ms(100);
   }
}

#pragma vector=PORT2_VECTOR
__interrupt void Port_2_Key(void) {
    if (P2IFG & 0x08) {
       TA0CCR0 = 0xFFFF;
       P2IFG &= ~ 0x08;
       delay_ms(100);
   }
    if (P2IFG & 0x40) {
        TA0CCR0 = 1000;
        P2IFG &= ~ 0x40;
        delay_ms(100);
    }
}

#pragma vector=TIMER0_A1_VECTOR
__interrupt void Timer_A(void) {
    P8OUT ^= 0x02;
    P3OUT ^= 0x40;
    TA0CCTL1 &= ~ 0x0001;
}

