#include <msp430.h> 

#define CPU_F          ((double)1000000)
#define delay_ms(x)    _delay_cycles((long)(CPU_F*(double)x/1000.0))

int main(void)
{
	WDTCTL = WDTPW | WDTHOLD;	// stop watchdog timer
    _enable_interrupts();

    P1DIR &= ~ 0x04;
    P1REN |= 0x04;
    P1OUT |= 0x04;

    P1IE |= 0x04;
    P1IES |= 0x04;
    P1IFG &= ~ 0x04;

    P8DIR |= 0x02;
    P8OUT &= ~ 0x02;

    P3DIR |= 0x20;
    P3OUT |= 0x20;

    while (1) {}

    return 0;
}

#pragma vector=PORT1_VECTOR
__interrupt void Port_1_Key(void) {
    P1IFG &= ~ 0x04;
    P8OUT ^= 0x02;
    delay_ms(500);
}
