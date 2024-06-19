// TODO:
// 	- ADD REMOVE ALARM TO INTERRUPT COMMANDS
//	- TEST THE DAYS AND CHECK IF IT DELETES THE ENTRY


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
#include <string.h>
#include <stdlib.h>

#include "SEG7_4DIG.h"
#include "PIC_DS1302.h"
#include "PIC_UART.h"

int phase = 0;

#define BUFFERMAX 10
//uint8_t inputBuffer[BUFFERMAX];
uint8_t inputBuffer[10];
uint8_t bufferIndex = 0;

// I want 16 entries so that's 16 x 3 bytes = 48 bytes
#define EEPROM_MAX 16
#define EEPROM_ENTRY_SIZE 3

bool alarmFlag = false;

void checkAlarm();

void addAlarm();
void removeAlarm();
void sendAlarms();

void displayOnSegment(int phase);
void EEPROM_write(uint8_t address, uint8_t data);
uint8_t EEPROM_read (uint8_t address);
void clearBuffer();


void interrupt ISR(){
   GIE = 0;
   PEIE = 0;
   
   if (INTF){
      INTF = 0;
      
      if (!alarmFlag)
      {
	 phase++;
	 
	 if (phase >= 3){
	    phase = 0;
	 }
      } else
	 alarmFlag = false;
      
   } else if (RCIF){
   
      uint8_t byteBuffer = RCREG;
      
      switch (byteBuffer){
	 case 'G':
	 
	    if (bufferIndex >= BUFFERMAX - 1){
	       addAlarm();
	       clearBuffer();
	    } else{
	       clearBuffer();
	    }
	    
	    break;
	    
	 case 'H':
	    sendAlarms();
	    clearBuffer();
	    break;
	 
	 case 'I':
	    removeAlarm();
	    clearBuffer();
	    break;
	 
	 default:
	    inputBuffer[bufferIndex] = byteBuffer;
	    
	    bufferIndex++;
	    
	    if (bufferIndex >= BUFFERMAX){
	       clearBuffer();
	    }
	    break;
      }
      
      UART_send('A');
   }
   
   PEIE = 1;
   GIE = 1;
}

// ==================================== MAIN ===============================================
void main(void)
 {
   SEG7_init();
   RTC_init();
   UART_init(9600);
   
   RCIE = 1; 
   
   TRISB0 = 1;
   TRISB3 = 0;
   RB3 = 0;
   
   INTE = 1;
   GIE = 1;
   PEIE = 1;
   
   for (int i = 0; i < 48; i++){ //TODO: REMOVE TEMP FOR LOOP
      EEPROM_write(i, 255);
   }
   
   while (1){

      displayOnSegment(phase);

      //SEG7_write_all(RTC_get_day(),0);
      //SEG7_write_all(EEPROM_read(0),0);
      //__delay_ms(10);
      
      if (!alarmFlag){
	 RB3 = 0;
	 checkAlarm();
      } else{
	 int tmp = RTC_get_seconds();
	 
	 if (tmp%2==0)
	    RB3 = 1;
	 else
	    RB3 = 0;
      }
   }
   
 }
 // ============================= ALARM FUNCTIONS =========================================
 
 void checkAlarm(){
   bool sunday,monday,tuesday,wednesday,thursday,friday,saturday,repeatFlag;
   alarmFlag = false;
   
   if (RTC_get_seconds() == 0){
   
      int j = 0;
      int index = 0;

      for (int i = 0; i < EEPROM_MAX; i++){
      
	 j = i*EEPROM_ENTRY_SIZE;
	 
	 if (EEPROM_read(j) != 255){
	    uint8_t byte1 = EEPROM_read(j);
	    uint8_t byte2 = EEPROM_read(j+1);
	    uint8_t byte3 = EEPROM_read(j+2);
	    
	    int daysChecked = 0;
	    
	    if ((byte1 & 0b01000000) == 0b01000000){
	       sunday = true;
	       daysChecked++;
	    } else
	       sunday = false;
	    
	    if ((byte1 & 0b00100000) == 0b00100000){
	       monday = true;
	       daysChecked++;
	    } else
	       monday = false;
	    
	    if ((byte1 & 0b00010000) == 0b00010000){
	       tuesday = true;
	       daysChecked++;
	    } else
	       tuesday = false;
	    
	    if ((byte1 & 0b00001000) == 0b00001000){
	       wednesday = true;
	       daysChecked++;
	    } else
	       wednesday = false;
	       
	    if ((byte1 & 0b00000100) == 0b00000100){
	       thursday = true;
	       daysChecked++;
	    } else
	       thursday = false;
	       
	    if ((byte1 & 0b00000010) == 0b00000010){
	       friday = true;
	       daysChecked++;
	    } else
	       friday = false;
	    
	    if ((byte1 & 0b00000001) == 0b00000001){
	       saturday = true;
	       daysChecked++;
	    } else
	       saturday = false;
	       
	    if ((byte1 & 0b10000000) == 0b10000000 || daysChecked > 1){
	       repeatFlag = true;
	    } else
	       repeatFlag = false;
	    
	    if (RTC_get_minutes() == byte3){
	       if (RTC_get_hours() == byte2){
		  
		  int day = RTC_get_day();
		  
		  if (day == 1 && sunday){
		     alarmFlag = true;
		  }
		  
		  if (day == 2 && monday){
		     alarmFlag = true;
		  }
		  
		  if (day == 3 && tuesday){
		     alarmFlag = true;
		  }
		  
		  if (day == 4 && wednesday){
		     alarmFlag = true;
		  }
		  
		  if (day == 5 && thursday){
		     alarmFlag = true;
		  }
		  
		  if (day == 6 && friday){
		     alarmFlag = true;
		  }
		  
		  if (day == 7 && saturday){
		     alarmFlag = true;
		  }
		  
		  if (!repeatFlag && alarmFlag){
		     int tmp = index * EEPROM_ENTRY_SIZE;
		     
		     EEPROM_write(tmp, 255);
		     EEPROM_write(tmp+1,255);
		     EEPROM_write(tmp+2,255);
		  }  
	       }
	    }
	 }
      }
   }
 }
 
 // ============================= COMMAND FUNCTIONS =======================================
 
 void addAlarm(){
   char *token;
   uint8_t hex_values[3];
   
   int i = 0;
   
   token = strtok(inputBuffer, " ");
   
   while (token != NULL){
      hex_values[i++] = (uint8_t)strtol(token, NULL, 16);
      token = strtok (NULL, " ");
   }
   
   if (hex_values[0] == 255){
      hex_values[0] = 127;
   }
   
   for (int i = 0; i < EEPROM_MAX; i++){
   
      int j = i * EEPROM_ENTRY_SIZE;
      
      if (EEPROM_read(j) == 255){
	 EEPROM_write(j, hex_values[0]);
	 EEPROM_write(j + 1, hex_values[1]);
	 EEPROM_write(j + 2, hex_values[2]);
	 break;
      }
   }
 }
 
 void removeAlarm(){
   char *token;
   
   token = strtok(inputBuffer, " ");
   
   if (token != NULL){
      int number = atoi(token);
      int tmp = EEPROM_read(number*EEPROM_ENTRY_SIZE);
      __delay_ms(1);
      if (number < EEPROM_MAX && tmp != 255){
	 int tmp = number * EEPROM_ENTRY_SIZE;
	 
	 EEPROM_write(tmp, 255);
	 EEPROM_write(tmp+1, 255);
	 EEPROM_write(tmp+2, 255);
      }
   }
 }
 
 void sendAlarms(){
   
   int j = 0;
   
   for (int i = 0; i < EEPROM_MAX; i++){
   
      j = i * EEPROM_ENTRY_SIZE;
      
      if (EEPROM_read(j) != 255){
	 UART_send(13);
	 UART_send('[');
	 UART_send(i+0x30);
	 UART_send_string("] ");
	 UART_send(EEPROM_read(j));
	 UART_send(' ');
	 UART_send(EEPROM_read(j+1));
	 UART_send(' ');
	 UART_send(EEPROM_read(j+2));
	 UART_send(' ');
	 UART_send(13);
      }
   }
 }
 
 // =================================== FUNCTIONS =========================================
 
 void displayOnSegment(int phase){
   PEIE = 0;
   GIE = 0;
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
   
   GIE = 1;
   PEIE = 1;
 }
 
 void EEPROM_write(uint8_t address, uint8_t data){
   EEPGD = 0;  
   GIE = 0;
   PEIE = 0;
   
   if (address >= 256){
      address = 255;
   }
   
   EEADR = address;
   EEDATA = data;
   
   WREN = 1;
   
   EECON2 = 0x55;
   EECON2 = 0xAA;
   
   WR = 1;
   
   while (WR == 1){}
   
   WREN = 0;
   PEIE = 1;
   GIE = 1;
 }
 
 uint8_t EEPROM_read(uint8_t address){
   EEPGD = 0;
   GIE = 0;
   PEIE = 0;
   
   EEADR = address;
   RD = 1;
   
   while (RD == 1){}
   
   PEIE = 1;
   GIE = 1;
   return EEDATA;
 }
 
 void clearBuffer(){
   /*
   for (int i = 0; i < BUFFERMAX; i++){
      inputBuffer[i] = 0;
   }
   */
   
   bufferIndex = 0;
 }