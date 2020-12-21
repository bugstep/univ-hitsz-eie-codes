#include <msp430.h> 

#define CPU_F          ((double)8000000)
#define delay_us(x)    __delay_cycles((long)(CPU_F*(double)x/1000000.0))
#define delay_ms(x)    __delay_cycles((long)(CPU_F*(double)x/1000.0))


int main(void)
{
	WDTCTL = WDTPW | WDTHOLD;	// stop watchdog timer
	
    P1REN |= 0x04;
    P1OUT |= 0x04;

	P8DIR |= 0x02;
	P3DIR |= 0x80;
	P7DIR |= 0x10;
	P6DIR |= 0x08;
	P6DIR |= 0x10;
	P3DIR |= 0x20;

	while(1) {
        if (!(P1IN & 0x04)) {
            do {
                P8OUT ^= 0x02;
                delay_ms(10);
                P3OUT ^= 0x80;
                delay_ms(10);
                P7OUT ^= 0x10;
                delay_ms(10);
                P6OUT ^= 0x08;
                delay_ms(10);
                P6OUT ^= 0x10;
                delay_ms(10);
                P3OUT ^= 0x20;
                delay_ms(20);
            } while (!(P1IN & 0x04));
        } else {
            P8OUT &= ~ 0x02;
            P3OUT &= ~ 0x80;
            P7OUT &= ~ 0x10;
            P6OUT &= ~ 0x08;
            P6OUT &= ~ 0x10;
            P3OUT &= ~ 0x20;
        }
    }

	return 0;
}
