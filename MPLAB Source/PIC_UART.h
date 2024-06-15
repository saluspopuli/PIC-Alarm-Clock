#ifndef PIC_UART_H
#define PIC_UART_H

#include <stdbool.h>
#include <xc.h>

// Baud rates will assume you are using a 4MHz crystal
// Available baud rates: 1200, 2400, 9600, 19200, 28800, 33600, 57600

void UART_init(int BAUD);
void UART_send(char data);
unsigned char UART_receive();
void UART_send_string(char *data);
void UART_disable();

#endif // PIC_UART_H