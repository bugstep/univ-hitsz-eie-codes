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

	while (1) {
	    if (P1IN & 0x04) {
	        P8OUT &= ~ 0x02;
	    } else {
	        P8OUT |= 0x02;
	    }
	}

	return 0;
}
