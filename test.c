#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>

#define EEPROM_MAX 48
#define EEPROM_ENTRY_SIZE 3

uint8_t inputBuffer[] = "3E 0C 32 ";

void removeAlarm(){
    char *token;
    
    token = strtok(inputBuffer, " ");
    
    if (token != NULL) {
        int number = atoi(token);
        
        // Rest of your code...
        
        if (index < EEPROM_MAX){
            int tmp = index * EEPROM_ENTRY_SIZE;
            
            EEPROM_write(tmp, 255);
            EEPROM_write(tmp+1, 255);
            EEPROM_write(tmp+2, 255);
        }
    }
}

int main(){
    addAlarm();
    return 0;
}