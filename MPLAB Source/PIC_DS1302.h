// REFERENCE https://www.analog.com/media/en/technical-documentation/data-sheets/DS1302.pdf
#ifndef PIC_DS1302_H
#define PIC_DS1302_H

#include <stdbool.h>
#include <xc.h>

#define _XTAL_FREQ 4000000

// Define the pins as well as their TRIS setups for easy setup on the PIC side
// ex: CLK RB0
//     CLK_MODE TRISB0
#define CLK		RC1
#define CLK_MODE 	TRISC1

#define DAT		RC2
#define DAT_MODE 	TRISC2

#define RST		RC0
#define RST_MODE 	TRISC0

#define INPUT   1
#define OUTPUT  0

// DS1302 register addresses definitions
// Make sure to use the read/write register functions to access these
// Because it will automatically differentiate between read and write
#define SECONDS     0x80
#define MINUTES     0x82
#define HOURS       0x84
#define DATE        0x86
#define MONTH       0x88
#define DAY         0x8A
#define YEAR        0x8C
#define CONTROL     0x8E
#define TRICKLE     0x90

bool RTC_WRITE_PROTECT = false;

void RTC_init();
void RTC_write_protect(bool state);
unsigned char RTC_read_register(unsigned char address);
void RTC_write_register(unsigned char address, unsigned char data);
void RTC_write(unsigned char data);
unsigned char RTC_read();

// Set and Get Functions

unsigned char RTC_get_seconds();
unsigned char RTC_get_minutes();
unsigned char RTC_get_hours();
unsigned char RTC_get_date();
unsigned char RTC_get_month();
unsigned char RTC_get_day();
unsigned char RTC_get_year();

void RTC_set_seconds(unsigned char seconds);
void RTC_set_minutes(unsigned char minutes);
void RTC_set_hours(unsigned char hours);
void RTC_set_date(unsigned char date);
void RTC_set_month(unsigned char month);
void RTC_set_day(unsigned char day);
void RTC_set_year(unsigned char year);

// Utility functions

unsigned char BCD_to_decimal(unsigned char data);
unsigned char decimal_to_BCD(unsigned char data);

#endif // PIC_DS1302_H