#include <msp430.h>

#define CPU_F          ((double)1000000)
#define delay_ms(x)    _delay_cycles((long)(CPU_F*(double)x/1000.0))

int flag = 0;

void sleep(int f) {
    if (f) delay_ms(100);
    return;
}

int main(void) {
    WDTCTL = WDTPW | WDTHOLD;
    _enable_interrupts();

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

    while (1) {
        if (flag) {
            P8OUT ^= 0x02;
            sleep(flag);
            P8OUT ^= 0x02;
            P3OUT ^= 0x80;
            sleep(flag);
            P3OUT ^= 0x80;
            P7OUT ^= 0x10;
            sleep(flag);
            P7OUT ^= 0x10;
            P6OUT ^= 0x08;
            sleep(flag);
            P6OUT ^= 0x08;
            P6OUT ^= 0x10;
            sleep(flag);
            P6OUT ^= 0x10;
            P3OUT ^= 0x20;
            sleep(flag);
            P3OUT ^= 0x20;
        }
    }
}

#pragma vector=PORT1_VECTOR
__interrupt void Port_1_Key(void) {
    if (P1IFG & 0x04) {
        P1IFG &= ~ 0x04;
        flag = 1;           // S1 start
        delay_ms(100);
    }
    if (P1IFG & 0x08) {
       P1IFG &= ~ 0x08;
       flag = 0;            // S2 stop
       delay_ms(100);
   }
}

#pragma vector=PORT2_VECTOR
__interrupt void Port_2_Key(void) {
    if (P2IFG & 0x40) {
        if (!(P2IES & 0x40)) {
            P2IFG &= ~ 0x40;
        }
        P2IES ^= 0x40;      // S4 pause
        delay_ms(100);
    }
    if (P2IFG & 0x08) {
       P2IFG &= ~ 0x08;
       P2IES ^= 0x08;
       flag = 1 - flag;     // S3 restart
       delay_ms(100);
   }
}

