#include "PIC_DS1302.h"

void RTC_init(){
    CLK_MODE = OUTPUT;
    DAT_MODE = OUTPUT;
    RST_MODE = OUTPUT;

    CLK = 0;
    DAT = 0;
    RST = 0;

    RTC_write_protect(RTC_WRITE_PROTECT);
}

void RTC_write_protect(bool state){
    RTC_write_register(0x8C, state << 7);
}

unsigned char RTC_read_register(unsigned char address){
    RST = 1;
    __delay_us(4);

    RTC_write(address+1);
    unsigned char data = RTC_read();

    RST = 0;

    return data;
}

void RTC_write_register(unsigned char address, unsigned char data){
    RST = 1;
    __delay_us(4);

    RTC_write(address);
    RTC_write(data);

    RST = 0;
}

void RTC_write(unsigned char data){
    DAT_MODE = OUTPUT;

    for (int i = 0; i < 8; i++){
        CLK = 0;
        __delay_us(1);
        DAT = (data >> i) & 0x01;
        __delay_us(1);
        CLK = 1;
        __delay_us(1);
    }
}

unsigned char RTC_read(){
    unsigned char data = 0;

    DAT_MODE = INPUT;

    for (int i = 0; i < 8; i++){
        CLK = 1;
        __delay_us(1);
        CLK = 0;
        __delay_us(1);

        data = data >> 1;

        if (DAT){
            data = data | 0x80;
        }
    }

    return data;
}

// SET AND GET FUNCTIONS

unsigned char RTC_get_seconds(){
    return BCD_to_decimal(RTC_read_register(SECONDS));
}

unsigned char RTC_get_minutes(){
    return BCD_to_decimal(RTC_read_register(MINUTES));
}

unsigned char RTC_get_hours(){
    unsigned char hours = RTC_read_register(HOURS);
    unsigned char tmp = 0;

    if (hours & 0x80){

        tmp = BCD_to_decimal(hours & 0x1F);

        if (hours & 0b00100000){
            tmp = tmp + 12;
        }
    } else {
        tmp = BCD_to_decimal(hours & 0x3F);
    }

    return tmp;
}

unsigned char RTC_get_date(){
    return BCD_to_decimal(RTC_read_register(DATE));
}

unsigned char RTC_get_month(){
    return BCD_to_decimal(RTC_read_register(MONTH));
}

unsigned char RTC_get_day(){
    return BCD_to_decimal(RTC_read_register(DAY));
}

unsigned char RTC_get_year(){
    return BCD_to_decimal(RTC_read_register(YEAR));
}

void RTC_set_seconds(unsigned char seconds){
    RTC_write_register(SECONDS, decimal_to_BCD(seconds));
}

void RTC_set_minutes(unsigned char minutes){
    RTC_write_register(MINUTES, decimal_to_BCD(minutes));
}

void RTC_set_hours(unsigned char hours){
    unsigned char tmp_hours = RTC_read_register(HOURS);
    unsigned char tmp_final = 0;

    if (tmp_hours & 0x80){
        if (hours >= 12){
            hours = hours - 12;
            hours = decimal_to_BCD(hours);
            tmp_final = 0b10100000 | hours;
        } else {
            hours = decimal_to_BCD(hours);
            tmp_final = 0b10000000 | hours;
        }
    } else {
        hours = decimal_to_BCD(hours);
        tmp_final = 0b00000000 | hours;
    }

    RTC_write_register(HOURS, tmp_final);
}

void RTC_set_date(unsigned char date){
    RTC_write_register(DATE, decimal_to_BCD(date));
}

void RTC_set_month(unsigned char month){
    RTC_write_register(MONTH, decimal_to_BCD(month));
}

void RTC_set_day(unsigned char day){
    RTC_write_register(DAY, decimal_to_BCD(day));
}

void RTC_set_year(unsigned char year){
    RTC_write_register(YEAR, decimal_to_BCD(year));
}

// UTILITY FUNCTIONS
unsigned char BCD_to_decimal(unsigned char bcd){
    unsigned char tens = (bcd >> 4) & 0x0F;
    unsigned char ones = bcd & 0x0F;
    unsigned char decimal = (tens * 10) + ones;

    return decimal;
}

unsigned char decimal_to_BCD(unsigned char decimal){
    unsigned char tens = decimal / 10;
    unsigned char ones = decimal % 10;
    unsigned char bcd = (tens << 4) | ones;

    return bcd;
}
