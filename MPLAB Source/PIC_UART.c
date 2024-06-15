#include "PIC_UART.h"

void UART_init(int BAUD){

    BRGH = 1;

    switch (BAUD) {
    case 1200:
        SPBRG = 207;
        break;

    case 2400:
        SPBRG = 103;
        break;

    case 9600:
        SPBRG = 25;
        break;

    case 19200:
        SPBRG = 12;
        break;

    case 28800:
        SPBRG = 8;
        break;
    
    case 33600:
        SPBRG = 6;
        break;
    
    case 57600:
        SPBRG = 3;
        break;
    
    default:
        break;
    }
    
    // SYNCHRONOUS IS OFF
    SYNC = 0;
    SPEN = 1;

    // ENABLE RECEPTION
    RX9 = 0;
    CREN = 1;

    // ENABLE TRANSMISSION
    TX9 = 0;
    TXEN = 1;
}

void UART_send_string(char *data){
    while (*data){
        UART_send(*data);
        data++;
    }
}

void UART_send(char data){
    while (!TRMT);
    TXREG = data;
}

unsigned char UART_receive(){
    if (RCIF){
        return RCREG;
    }
    return -1;
}

void UART_disable(){
    SPEN = 0;
    CREN = 0;
    TXEN = 0;
}