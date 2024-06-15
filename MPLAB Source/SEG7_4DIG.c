#include "SEG7_4DIG.h"

void SEG7_init(){
    SEG7_DATA_MODE = 0;
    SEG7_DIGIT_1_MODE = 0;
    SEG7_DIGIT_2_MODE = 0;
    SEG7_DIGIT_3_MODE = 0;
    SEG7_DIGIT_4_MODE = 0;
}

void SEG7_write_all(uint16_t value, uint8_t decimal_point){
    uint8_t digit1 = value / 1000;
    uint8_t digit2 = (value % 1000) / 100;
    uint8_t digit3 = (value % 100) / 10;
    uint8_t digit4 = value % 10;

    bool dp1 = (decimal_point & 0x08) >> 3;
    bool dp2 = (decimal_point & 0x04) >> 2;
    bool dp3 = (decimal_point & 0x02) >> 1;
    bool dp4 = decimal_point & 0x01;

    SEG7_write_digit(1, digit1, dp1);
    SEG7_write_digit(2, digit2, dp2);
    SEG7_write_digit(3, digit3, dp3);
    SEG7_write_digit(4, digit4, dp4);
}

void SEG7_write_digit(uint8_t digit, uint8_t value, bool decimal_point){
    SEG7_DIGIT_1 = 1;
    SEG7_DIGIT_2 = 1;
    SEG7_DIGIT_3 = 1;
    SEG7_DIGIT_4 = 1;

    switch(digit){
        case 1:
            SEG7_DIGIT_1 = 0;
            break;
        case 2:
            SEG7_DIGIT_2 = 0;
            break;
        case 3:
            SEG7_DIGIT_3 = 0;
            break;
        case 4:
            SEG7_DIGIT_4 = 0;
            break;
    }

    SEG7_DATA = segNum[value];
    if(decimal_point){
        SEG7_DATA |= 0x80;
    }
    
    __delay_ms(1);
}