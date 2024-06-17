#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>

#define EEPROM_MAX 48
#define EEPROM_ENTRY_SIZE 3

uint8_t inputBuffer[] = "3E 0C 32 ";

void addAlarm(){
   char *token;
   uint8_t hex_values[3];
   
   int i = 0;
   
   token = strtok(inputBuffer, " ");
   
   while (token != NULL){
      hex_values[i++] = (uint8_t)strtol(token, NULL, 16);
      token = strtok (NULL, " ");
   }
   

	 printf("%02X(%d) ", hex_values[0], hex_values[0]);
     printf("%02X(%d) ", hex_values[1], hex_values[1]);
     printf("%02X(%d) ", hex_values[2], hex_values[2]);



 }

int main(){
    addAlarm();
    return 0;
}