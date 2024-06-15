#ifndef SEG7_4DIG_H
#define SEG7_4DIG_H

#include <stdint.h>
#include <stdbool.h>
#include <xc.h>

#define _XTAL_FREQ 4000000

#define SEG7_DATA		PORTD
#define SEG7_DATA_MODE          TRISD


// DIGITS DEFINITIONS
#define SEG7_DIGIT_1		RB4
#define SEG7_DIGIT_1_MODE       TRISB4

#define SEG7_DIGIT_2		RB5
#define SEG7_DIGIT_2_MODE       TRISB5

#define SEG7_DIGIT_3		RB6
#define SEG7_DIGIT_3_MODE       TRISB6

#define SEG7_DIGIT_4		RB7
#define SEG7_DIGIT_4_MODE       TRISB7

// VARIABLES

unsigned char segNum[] = {0b00111111, 0b00000110, 0b01011011, 0b01001111, 0b01100110, 0b01101101, 0b01111101, 0b00000111, 0b01111111, 0b01101111};

void SEG7_init();
void SEG7_write_all(uint16_t value, uint8_t decimal_point);
void SEG7_write_digit(uint8_t digit, uint8_t value, bool decimal_point);


#endif // SEG7_4DIG_H