/* Main.c file generated by New Project wizard
 *
 * Created:   Sat Jun 15 2024
 * Processor: PIC16F877A
 * Compiler:  MPLAB XC8
 */

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

#include <xc.h>
#include <stdint.h>

#include "SEG7_4DIG.h"
#include "PIC_DS1302.h"

int phase = 0;

void displayOnSegment(int phase);

void interrupt ISR(){
   GIE = 0;
   
   if (INTF){
      INTF = 0;
      
      phase++;
      
      if (phase >= 3){
	 phase = 0;
      }
      
   }
   
   GIE = 1;
}

void main(void)
 {
   SEG7_init();
   RTC_init();
   
   TRISB0 = 1;
   INTE = 1;
   GIE = 1;
   
   RTC_set_year(24); // TODO: DEBUGGING, REMOVE
   
   while (1){
   
     displayOnSegment(phase);
      
   }
   
 }
 
 void displayOnSegment(int phase){
   if (phase == 0){
      uint8_t minutes = RTC_get_minutes();
      uint8_t hours = RTC_get_hours();
      
      SEG7_write_all((hours*100) + minutes, 4);
   } else if (phase == 1){
      uint8_t month = RTC_get_month();
      uint8_t day = RTC_get_date();
      
      SEG7_write_all((month*100) + day, 4);
   
   } else {
      uint8_t year = RTC_get_year();
      
      SEG7_write_all(2000 + year, 0);
   }
 }