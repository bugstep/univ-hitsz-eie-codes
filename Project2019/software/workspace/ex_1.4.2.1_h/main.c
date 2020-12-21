#include <msp430.h> 

/**
 * main.c
 */

int main(void)
{
	WDTCTL = WDTPW | WDTHOLD;	// stop watchdog timer
	
	P1REN |= 0x04;
    P1OUT |= 0x04;

    P8DIR |= 0x02;
    P8OUT &= ~ 0x02;

    char flag = 0;

    while (1) {
        if (P1IN & 0x04 && flag) {
            flag = 0;
            P8OUT ^= 0x02;
            __delay_cycles(50000);
        } else if (!(P1IN & 0x04)) {
            flag = 1;
            __delay_cycles(50000);
        }
    }

	return 0;
}
