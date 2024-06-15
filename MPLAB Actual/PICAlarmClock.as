opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 59893"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_RTC_init
	FNCALL	_main,_RTC_set_year
	FNCALL	_main,_SEG7_init
	FNCALL	_main,_displayOnSegment
	FNCALL	_displayOnSegment,_RTC_get_date
	FNCALL	_displayOnSegment,_RTC_get_hours
	FNCALL	_displayOnSegment,_RTC_get_minutes
	FNCALL	_displayOnSegment,_RTC_get_month
	FNCALL	_displayOnSegment,_RTC_get_year
	FNCALL	_displayOnSegment,_SEG7_write_all
	FNCALL	_displayOnSegment,___wmul
	FNCALL	_SEG7_write_all,_SEG7_write_digit
	FNCALL	_SEG7_write_all,___lwdiv
	FNCALL	_SEG7_write_all,___lwmod
	FNCALL	_RTC_get_year,_BCD_to_decimal
	FNCALL	_RTC_get_year,_RTC_read_register
	FNCALL	_RTC_get_month,_BCD_to_decimal
	FNCALL	_RTC_get_month,_RTC_read_register
	FNCALL	_RTC_get_minutes,_BCD_to_decimal
	FNCALL	_RTC_get_minutes,_RTC_read_register
	FNCALL	_RTC_get_hours,_BCD_to_decimal
	FNCALL	_RTC_get_hours,_RTC_read_register
	FNCALL	_RTC_get_date,_BCD_to_decimal
	FNCALL	_RTC_get_date,_RTC_read_register
	FNCALL	_RTC_read_register,_RTC_read
	FNCALL	_RTC_read_register,_RTC_write
	FNCALL	_BCD_to_decimal,___bmul
	FNCALL	_RTC_set_year,_RTC_write_register
	FNCALL	_RTC_set_year,_decimal_to_BCD
	FNCALL	_decimal_to_BCD,___awdiv
	FNCALL	_decimal_to_BCD,___awmod
	FNCALL	_RTC_init,_RTC_write_protect
	FNCALL	_RTC_write_protect,_RTC_write_register
	FNCALL	_RTC_write_register,_RTC_write
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_segNum
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\SEG7_4DIG.h"
	line	29

;initializer for _segNum
	retlw	03Fh
	retlw	06h
	retlw	05Bh
	retlw	04Fh
	retlw	066h
	retlw	06Dh
	retlw	07Dh
	retlw	07h
	retlw	07Fh
	retlw	06Fh
	global	_RTC_WRITE_PROTECT
	global	_phase
	global	_PORTD
_PORTD	set	0x8
	global	_RCREG
_RCREG	set	0x1A
	global	_TXREG
_TXREG	set	0x19
	global	_CREN
_CREN	set	0xC4
	global	_GIE
_GIE	set	0x5F
	global	_INTE
_INTE	set	0x5C
	global	_INTF
_INTF	set	0x59
	global	_RB4
_RB4	set	0x34
	global	_RB5
_RB5	set	0x35
	global	_RB6
_RB6	set	0x36
	global	_RB7
_RB7	set	0x37
	global	_RC0
_RC0	set	0x38
	global	_RC1
_RC1	set	0x39
	global	_RC2
_RC2	set	0x3A
	global	_RCIF
_RCIF	set	0x65
	global	_RX9
_RX9	set	0xC6
	global	_SPEN
_SPEN	set	0xC7
	global	_SPBRG
_SPBRG	set	0x99
	global	_TRISD
_TRISD	set	0x88
	global	_BRGH
_BRGH	set	0x4C2
	global	_SYNC
_SYNC	set	0x4C4
	global	_TRISB0
_TRISB0	set	0x430
	global	_TRISB4
_TRISB4	set	0x434
	global	_TRISB5
_TRISB5	set	0x435
	global	_TRISB6
_TRISB6	set	0x436
	global	_TRISB7
_TRISB7	set	0x437
	global	_TRISC0
_TRISC0	set	0x438
	global	_TRISC1
_TRISC1	set	0x439
	global	_TRISC2
_TRISC2	set	0x43A
	global	_TRMT
_TRMT	set	0x4C1
	global	_TX9
_TX9	set	0x4C6
	global	_TXEN
_TXEN	set	0x4C5
; #config settings
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_BOREN$ON
__CFG_BOREN$ON equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_WRT$OFF
__CFG_WRT$OFF equ 0x0
global __CFG_FOSC$XT
__CFG_FOSC$XT equ 0x0
	file	"PICAlarmClock.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_RTC_WRITE_PROTECT:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_phase:
       ds      2

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\SEG7_4DIG.h"
	line	29
_segNum:
       ds      10

	file	"PICAlarmClock.as"
	line	#
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	line	#
global btemp
psect inittext,class=CODE,delta=2
global init_fetch0,btemp
;	Called with low address in FSR and high address in W
init_fetch0:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram0
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram0:
	fcall init_fetch0
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram0
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
global init_ram0, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+10)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_SEG7_init:	; 0 bytes @ 0x0
?_RTC_init:	; 0 bytes @ 0x0
?_RTC_set_year:	; 0 bytes @ 0x0
?_RTC_write_protect:	; 0 bytes @ 0x0
?_RTC_write:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
??_ISR:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_RTC_get_minutes:	; 1 bytes @ 0x0
?_RTC_get_hours:	; 1 bytes @ 0x0
?_RTC_get_month:	; 1 bytes @ 0x0
?_RTC_get_date:	; 1 bytes @ 0x0
?_RTC_get_year:	; 1 bytes @ 0x0
?_RTC_read:	; 1 bytes @ 0x0
?_BCD_to_decimal:	; 1 bytes @ 0x0
?_decimal_to_BCD:	; 1 bytes @ 0x0
?_RTC_read_register:	; 1 bytes @ 0x0
	ds	4
??_SEG7_init:	; 0 bytes @ 0x4
??_RTC_write:	; 0 bytes @ 0x4
??_RTC_read:	; 0 bytes @ 0x4
?_SEG7_write_digit:	; 0 bytes @ 0x4
?___bmul:	; 1 bytes @ 0x4
	global	?___wmul
?___wmul:	; 2 bytes @ 0x4
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x4
	global	?___awmod
?___awmod:	; 2 bytes @ 0x4
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x4
	global	SEG7_write_digit@value
SEG7_write_digit@value:	; 1 bytes @ 0x4
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x4
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x4
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x4
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x4
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x4
	ds	1
??___bmul:	; 0 bytes @ 0x5
	global	RTC_write@data
RTC_write@data:	; 1 bytes @ 0x5
	global	SEG7_write_digit@decimal_point
SEG7_write_digit@decimal_point:	; 1 bytes @ 0x5
	ds	1
??_SEG7_write_digit:	; 0 bytes @ 0x6
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x6
	global	RTC_write@i
RTC_write@i:	; 2 bytes @ 0x6
	global	RTC_read@i
RTC_read@i:	; 2 bytes @ 0x6
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x6
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x6
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x6
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x6
	ds	1
	global	SEG7_write_digit@digit
SEG7_write_digit@digit:	; 1 bytes @ 0x7
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x7
	ds	1
??___wmul:	; 0 bytes @ 0x8
??___awdiv:	; 0 bytes @ 0x8
??___awmod:	; 0 bytes @ 0x8
??___lwmod:	; 0 bytes @ 0x8
	global	RTC_read@data
RTC_read@data:	; 1 bytes @ 0x8
	ds	1
??_RTC_init:	; 0 bytes @ 0x9
??_RTC_get_minutes:	; 0 bytes @ 0x9
??_RTC_get_month:	; 0 bytes @ 0x9
??_RTC_get_date:	; 0 bytes @ 0x9
??_RTC_get_year:	; 0 bytes @ 0x9
??_RTC_write_register:	; 0 bytes @ 0x9
??_main:	; 0 bytes @ 0x9
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_BCD_to_decimal:	; 0 bytes @ 0x0
??_RTC_read_register:	; 0 bytes @ 0x0
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x0
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x0
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x0
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x0
	ds	1
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x1
	global	RTC_read_register@address
RTC_read_register@address:	; 1 bytes @ 0x1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x1
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x1
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x1
	ds	1
	global	RTC_read_register@data
RTC_read_register@data:	; 1 bytes @ 0x2
	global	BCD_to_decimal@tens
BCD_to_decimal@tens:	; 1 bytes @ 0x2
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x2
	ds	1
	global	BCD_to_decimal@ones
BCD_to_decimal@ones:	; 1 bytes @ 0x3
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x3
	ds	1
??_decimal_to_BCD:	; 0 bytes @ 0x4
	global	BCD_to_decimal@decimal
BCD_to_decimal@decimal:	; 1 bytes @ 0x4
	ds	1
??___lwdiv:	; 0 bytes @ 0x5
	global	BCD_to_decimal@bcd
BCD_to_decimal@bcd:	; 1 bytes @ 0x5
	ds	1
??_RTC_get_hours:	; 0 bytes @ 0x6
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x6
	ds	1
	global	RTC_get_hours@tmp
RTC_get_hours@tmp:	; 1 bytes @ 0x7
	global	decimal_to_BCD@tens
decimal_to_BCD@tens:	; 1 bytes @ 0x7
	ds	1
	global	RTC_get_hours@hours
RTC_get_hours@hours:	; 1 bytes @ 0x8
	global	decimal_to_BCD@ones
decimal_to_BCD@ones:	; 1 bytes @ 0x8
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x8
	ds	1
?_SEG7_write_all:	; 0 bytes @ 0x9
	global	decimal_to_BCD@bcd
decimal_to_BCD@bcd:	; 1 bytes @ 0x9
	global	SEG7_write_all@value
SEG7_write_all@value:	; 2 bytes @ 0x9
	ds	1
	global	decimal_to_BCD@decimal
decimal_to_BCD@decimal:	; 1 bytes @ 0xA
	ds	1
?_RTC_write_register:	; 0 bytes @ 0xB
	global	RTC_write_register@data
RTC_write_register@data:	; 1 bytes @ 0xB
	global	SEG7_write_all@decimal_point
SEG7_write_all@decimal_point:	; 1 bytes @ 0xB
	ds	1
??_SEG7_write_all:	; 0 bytes @ 0xC
	global	RTC_write_register@address
RTC_write_register@address:	; 1 bytes @ 0xC
	ds	1
??_RTC_set_year:	; 0 bytes @ 0xD
??_RTC_write_protect:	; 0 bytes @ 0xD
	ds	1
	global	RTC_set_year@year
RTC_set_year@year:	; 1 bytes @ 0xE
	global	SEG7_write_all@digit1
SEG7_write_all@digit1:	; 1 bytes @ 0xE
	ds	1
	global	RTC_write_protect@state
RTC_write_protect@state:	; 1 bytes @ 0xF
	global	SEG7_write_all@digit2
SEG7_write_all@digit2:	; 1 bytes @ 0xF
	ds	1
	global	SEG7_write_all@digit3
SEG7_write_all@digit3:	; 1 bytes @ 0x10
	ds	1
	global	SEG7_write_all@digit4
SEG7_write_all@digit4:	; 1 bytes @ 0x11
	ds	1
	global	SEG7_write_all@dp1
SEG7_write_all@dp1:	; 1 bytes @ 0x12
	ds	1
	global	SEG7_write_all@dp2
SEG7_write_all@dp2:	; 1 bytes @ 0x13
	ds	1
	global	SEG7_write_all@dp3
SEG7_write_all@dp3:	; 1 bytes @ 0x14
	ds	1
	global	SEG7_write_all@dp4
SEG7_write_all@dp4:	; 1 bytes @ 0x15
	ds	1
?_displayOnSegment:	; 0 bytes @ 0x16
	global	displayOnSegment@phase
displayOnSegment@phase:	; 2 bytes @ 0x16
	ds	2
??_displayOnSegment:	; 0 bytes @ 0x18
	ds	3
	global	displayOnSegment@minutes
displayOnSegment@minutes:	; 1 bytes @ 0x1B
	ds	1
	global	displayOnSegment@hours
displayOnSegment@hours:	; 1 bytes @ 0x1C
	ds	1
	global	displayOnSegment@month
displayOnSegment@month:	; 1 bytes @ 0x1D
	ds	1
	global	displayOnSegment@day
displayOnSegment@day:	; 1 bytes @ 0x1E
	ds	1
	global	displayOnSegment@year
displayOnSegment@year:	; 1 bytes @ 0x1F
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        10
;!    BSS         3
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      9      10
;!    BANK0            80     32      44
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _SEG7_write_all->___lwmod
;!    ___lwdiv->___lwmod
;!    _RTC_read_register->_RTC_read
;!    _BCD_to_decimal->___bmul
;!    _decimal_to_BCD->___awdiv
;!    _decimal_to_BCD->___awmod
;!
;!Critical Paths under _ISR in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_displayOnSegment
;!    _displayOnSegment->_SEG7_write_all
;!    _SEG7_write_all->___lwdiv
;!    ___lwdiv->___lwmod
;!    _RTC_get_year->_BCD_to_decimal
;!    _RTC_get_month->_BCD_to_decimal
;!    _RTC_get_minutes->_BCD_to_decimal
;!    _RTC_get_hours->_BCD_to_decimal
;!    _RTC_get_date->_BCD_to_decimal
;!    _RTC_set_year->_RTC_write_register
;!    _decimal_to_BCD->___awdiv
;!    _RTC_init->_RTC_write_protect
;!    _RTC_write_protect->_RTC_write_register
;!    _RTC_write_register->_decimal_to_BCD
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0    8618
;!                           _RTC_init
;!                       _RTC_set_year
;!                          _SEG7_init
;!                   _displayOnSegment
;! ---------------------------------------------------------------------------------
;! (1) _displayOnSegment                                    10     8      2    6291
;!                                             22 BANK0     10     8      2
;!                       _RTC_get_date
;!                      _RTC_get_hours
;!                    _RTC_get_minutes
;!                      _RTC_get_month
;!                       _RTC_get_year
;!                     _SEG7_write_all
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (2) ___wmul                                               6     2      4     396
;!                                              4 COMMON     4     0      4
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _SEG7_write_all                                      13    10      3    2502
;!                                              9 BANK0     13    10      3
;!                   _SEG7_write_digit
;!                            ___lwdiv
;!                            ___lwmod
;!                             ___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___lwmod                                              6     2      4     622
;!                                              4 COMMON     5     1      4
;!                                              0 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (3) ___lwdiv                                              8     4      4     480
;!                                              1 BANK0      8     4      4
;!                            ___lwmod (ARG)
;! ---------------------------------------------------------------------------------
;! (3) _SEG7_write_digit                                     4     2      2     490
;!                                              4 COMMON     4     2      2
;! ---------------------------------------------------------------------------------
;! (2) _RTC_get_year                                         0     0      0     579
;!                     _BCD_to_decimal
;!                  _RTC_read_register
;! ---------------------------------------------------------------------------------
;! (2) _RTC_get_month                                        0     0      0     579
;!                     _BCD_to_decimal
;!                  _RTC_read_register
;! ---------------------------------------------------------------------------------
;! (2) _RTC_get_minutes                                      0     0      0     579
;!                     _BCD_to_decimal
;!                  _RTC_read_register
;! ---------------------------------------------------------------------------------
;! (2) _RTC_get_hours                                        3     3      0     780
;!                                              6 BANK0      3     3      0
;!                     _BCD_to_decimal
;!                  _RTC_read_register
;! ---------------------------------------------------------------------------------
;! (2) _RTC_get_date                                         0     0      0     579
;!                     _BCD_to_decimal
;!                  _RTC_read_register
;! ---------------------------------------------------------------------------------
;! (3) _RTC_read_register                                    3     3      0     270
;!                                              0 BANK0      3     3      0
;!                           _RTC_read
;!                          _RTC_write
;! ---------------------------------------------------------------------------------
;! (4) _RTC_read                                             5     5      0     115
;!                                              4 COMMON     5     5      0
;! ---------------------------------------------------------------------------------
;! (3) _BCD_to_decimal                                       6     6      0     309
;!                                              0 BANK0      6     6      0
;!                             ___bmul
;! ---------------------------------------------------------------------------------
;! (4) ___bmul                                               4     3      1     145
;!                                              4 COMMON     4     3      1
;! ---------------------------------------------------------------------------------
;! (1) _SEG7_init                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _RTC_set_year                                         2     2      0    1624
;!                                             13 BANK0      2     2      0
;!                 _RTC_write_register
;!                     _decimal_to_BCD
;! ---------------------------------------------------------------------------------
;! (2) _decimal_to_BCD                                       7     7      0     921
;!                                              4 BANK0      7     7      0
;!                            ___awdiv
;!                            ___awmod
;! ---------------------------------------------------------------------------------
;! (3) ___awmod                                              7     3      4     402
;!                                              4 COMMON     5     1      4
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (3) ___awdiv                                              9     5      4     406
;!                                              4 COMMON     5     1      4
;!                                              0 BANK0      4     4      0
;! ---------------------------------------------------------------------------------
;! (1) _RTC_init                                             0     0      0     703
;!                  _RTC_write_protect
;! ---------------------------------------------------------------------------------
;! (2) _RTC_write_protect                                    3     3      0     703
;!                                             13 BANK0      3     3      0
;!                 _RTC_write_register
;! ---------------------------------------------------------------------------------
;! (2) _RTC_write_register                                   2     1      1     672
;!                                             11 BANK0      2     1      1
;!                          _RTC_write
;!                     _decimal_to_BCD (ARG)
;! ---------------------------------------------------------------------------------
;! (4) _RTC_write                                            4     4      0      90
;!                                              4 COMMON     4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _ISR                                                  4     4      0       0
;!                                              0 COMMON     4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _RTC_init
;!     _RTC_write_protect
;!       _RTC_write_register
;!         _RTC_write
;!         _decimal_to_BCD (ARG)
;!           ___awdiv
;!           ___awmod
;!   _RTC_set_year
;!     _RTC_write_register
;!       _RTC_write
;!       _decimal_to_BCD (ARG)
;!         ___awdiv
;!         ___awmod
;!     _decimal_to_BCD
;!       ___awdiv
;!       ___awmod
;!   _SEG7_init
;!   _displayOnSegment
;!     _RTC_get_date
;!       _BCD_to_decimal
;!         ___bmul
;!       _RTC_read_register
;!         _RTC_read
;!         _RTC_write
;!     _RTC_get_hours
;!       _BCD_to_decimal
;!         ___bmul
;!       _RTC_read_register
;!         _RTC_read
;!         _RTC_write
;!     _RTC_get_minutes
;!       _BCD_to_decimal
;!         ___bmul
;!       _RTC_read_register
;!         _RTC_read
;!         _RTC_write
;!     _RTC_get_month
;!       _BCD_to_decimal
;!         ___bmul
;!       _RTC_read_register
;!         _RTC_read
;!         _RTC_write
;!     _RTC_get_year
;!       _BCD_to_decimal
;!         ___bmul
;!       _RTC_read_register
;!         _RTC_read
;!         _RTC_write
;!     _SEG7_write_all
;!       _SEG7_write_digit
;!       ___lwdiv
;!         ___lwmod (ARG)
;!       ___lwmod
;!       ___wmul (ARG)
;!     ___wmul
;!
;! _ISR (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60      0       0       9        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     20      2C       5       55.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      9       A       1       71.4%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      36      12        0.0%
;!ABS                  0      0      36       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 44 in file "C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_RTC_init
;;		_RTC_set_year
;;		_SEG7_init
;;		_displayOnSegment
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\main.c"
	line	44
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\main.c"
	line	44
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	46
	
l1723:	
;main.c: 46: SEG7_init();
	fcall	_SEG7_init
	line	47
	
l1725:	
;main.c: 47: RTC_init();
	fcall	_RTC_init
	line	49
	
l1727:	
;main.c: 49: TRISB0 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1072/8)^080h,(1072)&7	;volatile
	line	50
	
l1729:	
;main.c: 50: INTE = 1;
	bsf	(92/8),(92)&7	;volatile
	line	51
	
l1731:	
;main.c: 51: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	53
	
l1733:	
;main.c: 53: RTC_set_year(24);
	movlw	(018h)
	fcall	_RTC_set_year
	goto	l1735
	line	55
;main.c: 55: while (1){
	
l42:	
	line	57
	
l1735:	
;main.c: 57: displayOnSegment(phase);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_phase+1),w
	clrf	(displayOnSegment@phase+1)
	addwf	(displayOnSegment@phase+1)
	movf	(_phase),w
	clrf	(displayOnSegment@phase)
	addwf	(displayOnSegment@phase)

	fcall	_displayOnSegment
	goto	l1735
	line	59
	
l43:	
	line	55
	goto	l1735
	
l44:	
	line	61
	
l45:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_displayOnSegment

;; *************** function _displayOnSegment *****************
;; Defined at:
;;		line 63 in file "C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\main.c"
;; Parameters:    Size  Location     Type
;;  phase           2   22[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  year            1   31[BANK0 ] unsigned char 
;;  day             1   30[BANK0 ] unsigned char 
;;  month           1   29[BANK0 ] unsigned char 
;;  hours           1   28[BANK0 ] unsigned char 
;;  minutes         1   27[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_RTC_get_date
;;		_RTC_get_hours
;;		_RTC_get_minutes
;;		_RTC_get_month
;;		_RTC_get_year
;;		_SEG7_write_all
;;		___wmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	63
global __ptext1
__ptext1:	;psect for function _displayOnSegment
psect	text1
	file	"C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\main.c"
	line	63
	global	__size_of_displayOnSegment
	__size_of_displayOnSegment	equ	__end_of_displayOnSegment-_displayOnSegment
	
_displayOnSegment:	
;incstack = 0
	opt	stack 3
; Regs used in _displayOnSegment: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	64
	
l1707:	
;main.c: 64: if (phase == 0){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((displayOnSegment@phase+1)),w
	iorwf	((displayOnSegment@phase)),w
	skipz
	goto	u1401
	goto	u1400
u1401:
	goto	l1713
u1400:
	line	65
	
l1709:	
;main.c: 65: uint8_t minutes = RTC_get_minutes();
	fcall	_RTC_get_minutes
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_displayOnSegment+0)+0
	movf	(??_displayOnSegment+0)+0,w
	movwf	(displayOnSegment@minutes)
	line	66
;main.c: 66: uint8_t hours = RTC_get_hours();
	fcall	_RTC_get_hours
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_displayOnSegment+0)+0
	movf	(??_displayOnSegment+0)+0,w
	movwf	(displayOnSegment@hours)
	line	68
	
l1711:	
;main.c: 68: SEG7_write_all((hours*100) + minutes, 4);
	movf	(displayOnSegment@hours),w
	movwf	(??_displayOnSegment+0)+0
	clrf	(??_displayOnSegment+0)+0+1
	movf	0+(??_displayOnSegment+0)+0,w
	movwf	(___wmul@multiplier)
	movf	1+(??_displayOnSegment+0)+0,w
	movwf	(___wmul@multiplier+1)
	movlw	low(064h)
	movwf	(___wmul@multiplicand)
	movlw	high(064h)
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(displayOnSegment@minutes),w
	addwf	(0+(?___wmul)),w
	movwf	(SEG7_write_all@value)
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(SEG7_write_all@value)
	movlw	(04h)
	movwf	(??_displayOnSegment+2)+0
	movf	(??_displayOnSegment+2)+0,w
	movwf	(SEG7_write_all@decimal_point)
	fcall	_SEG7_write_all
	line	69
;main.c: 69: } else if (phase == 1){
	goto	l52
	
l48:	
	
l1713:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(displayOnSegment@phase),w
	iorwf	(displayOnSegment@phase+1),w
	skipz
	goto	u1411
	goto	u1410
u1411:
	goto	l1719
u1410:
	line	70
	
l1715:	
;main.c: 70: uint8_t month = RTC_get_month();
	fcall	_RTC_get_month
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_displayOnSegment+0)+0
	movf	(??_displayOnSegment+0)+0,w
	movwf	(displayOnSegment@month)
	line	71
;main.c: 71: uint8_t day = RTC_get_date();
	fcall	_RTC_get_date
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_displayOnSegment+0)+0
	movf	(??_displayOnSegment+0)+0,w
	movwf	(displayOnSegment@day)
	line	73
	
l1717:	
;main.c: 73: SEG7_write_all((month*100) + day, 4);
	movf	(displayOnSegment@month),w
	movwf	(??_displayOnSegment+0)+0
	clrf	(??_displayOnSegment+0)+0+1
	movf	0+(??_displayOnSegment+0)+0,w
	movwf	(___wmul@multiplier)
	movf	1+(??_displayOnSegment+0)+0,w
	movwf	(___wmul@multiplier+1)
	movlw	low(064h)
	movwf	(___wmul@multiplicand)
	movlw	high(064h)
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(displayOnSegment@day),w
	addwf	(0+(?___wmul)),w
	movwf	(SEG7_write_all@value)
	movlw	0
	skipnc
	movlw	1
	addwf	(1+(?___wmul)),w
	movwf	1+(SEG7_write_all@value)
	movlw	(04h)
	movwf	(??_displayOnSegment+2)+0
	movf	(??_displayOnSegment+2)+0,w
	movwf	(SEG7_write_all@decimal_point)
	fcall	_SEG7_write_all
	line	75
;main.c: 75: } else {
	goto	l52
	
l50:	
	line	76
	
l1719:	
;main.c: 76: uint8_t year = RTC_get_year();
	fcall	_RTC_get_year
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_displayOnSegment+0)+0
	movf	(??_displayOnSegment+0)+0,w
	movwf	(displayOnSegment@year)
	line	78
	
l1721:	
;main.c: 78: SEG7_write_all(2000 + year, 0);
	movf	(displayOnSegment@year),w
	addlw	low(07D0h)
	movwf	(SEG7_write_all@value)
	movlw	high(07D0h)
	skipnc
	movlw	(high(07D0h)+1)&0ffh
	movwf	((SEG7_write_all@value))+1
	clrf	(SEG7_write_all@decimal_point)
	fcall	_SEG7_write_all
	goto	l52
	line	79
	
l51:	
	goto	l52
	
l49:	
	line	80
	
l52:	
	return
	opt stack 0
GLOBAL	__end_of_displayOnSegment
	__end_of_displayOnSegment:
	signat	_displayOnSegment,4216
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    4[COMMON] unsigned int 
;;  multiplicand    2    6[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    0[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    4[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       2       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_displayOnSegment
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
global __ptext2
__ptext2:	;psect for function ___wmul
psect	text2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 5
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l1689:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l1691
	line	44
	
l341:	
	line	45
	
l1691:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u1361
	goto	u1360
u1361:
	goto	l342
u1360:
	line	46
	
l1693:	
	movf	(___wmul@multiplicand),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l342:	
	line	47
	movlw	01h
	
u1375:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u1375
	line	48
	
l1695:	
	movlw	01h
	
u1385:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u1385
	line	49
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u1391
	goto	u1390
u1391:
	goto	l1691
u1390:
	goto	l1697
	
l343:	
	line	52
	
l1697:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l344
	
l1699:	
	line	53
	
l344:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	_SEG7_write_all

;; *************** function _SEG7_write_all *****************
;; Defined at:
;;		line 11 in file "C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\SEG7_4DIG.c"
;; Parameters:    Size  Location     Type
;;  value           2    9[BANK0 ] unsigned int 
;;  decimal_poin    1   11[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dp4             1   21[BANK0 ] unsigned char 
;;  dp3             1   20[BANK0 ] unsigned char 
;;  dp2             1   19[BANK0 ] unsigned char 
;;  dp1             1   18[BANK0 ] unsigned char 
;;  digit4          1   17[BANK0 ] unsigned char 
;;  digit3          1   16[BANK0 ] unsigned char 
;;  digit2          1   15[BANK0 ] unsigned char 
;;  digit1          1   14[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       8       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_SEG7_write_digit
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_displayOnSegment
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\SEG7_4DIG.c"
	line	11
global __ptext3
__ptext3:	;psect for function _SEG7_write_all
psect	text3
	file	"C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\SEG7_4DIG.c"
	line	11
	global	__size_of_SEG7_write_all
	__size_of_SEG7_write_all	equ	__end_of_SEG7_write_all-_SEG7_write_all
	
_SEG7_write_all:	
;incstack = 0
	opt	stack 4
; Regs used in _SEG7_write_all: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	12
	
l1657:	
;SEG7_4DIG.c: 12: uint8_t digit1 = value / 1000;
	movlw	low(03E8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___lwdiv@divisor)
	movlw	high(03E8h)
	movwf	((___lwdiv@divisor))+1
	movf	(SEG7_write_all@value+1),w
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	movf	(SEG7_write_all@value),w
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	movwf	(??_SEG7_write_all+0)+0
	movf	(??_SEG7_write_all+0)+0,w
	movwf	(SEG7_write_all@digit1)
	line	13
;SEG7_4DIG.c: 13: uint8_t digit2 = (value % 1000) / 100;
	movlw	low(064h)
	movwf	(___lwdiv@divisor)
	movlw	high(064h)
	movwf	((___lwdiv@divisor))+1
	movf	(SEG7_write_all@value+1),w
	clrf	(___lwmod@dividend+1)
	addwf	(___lwmod@dividend+1)
	movf	(SEG7_write_all@value),w
	clrf	(___lwmod@dividend)
	addwf	(___lwmod@dividend)

	movlw	low(03E8h)
	movwf	(___lwmod@divisor)
	movlw	high(03E8h)
	movwf	((___lwmod@divisor))+1
	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	movf	(0+(?___lwmod)),w
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	movwf	(??_SEG7_write_all+0)+0
	movf	(??_SEG7_write_all+0)+0,w
	movwf	(SEG7_write_all@digit2)
	line	14
;SEG7_4DIG.c: 14: uint8_t digit3 = (value % 100) / 10;
	movlw	low(0Ah)
	movwf	(___lwdiv@divisor)
	movlw	high(0Ah)
	movwf	((___lwdiv@divisor))+1
	movf	(SEG7_write_all@value+1),w
	clrf	(___lwmod@dividend+1)
	addwf	(___lwmod@dividend+1)
	movf	(SEG7_write_all@value),w
	clrf	(___lwmod@dividend)
	addwf	(___lwmod@dividend)

	movlw	low(064h)
	movwf	(___lwmod@divisor)
	movlw	high(064h)
	movwf	((___lwmod@divisor))+1
	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	movf	(0+(?___lwmod)),w
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	movwf	(??_SEG7_write_all+0)+0
	movf	(??_SEG7_write_all+0)+0,w
	movwf	(SEG7_write_all@digit3)
	line	15
;SEG7_4DIG.c: 15: uint8_t digit4 = value % 10;
	movlw	low(0Ah)
	movwf	(___lwmod@divisor)
	movlw	high(0Ah)
	movwf	((___lwmod@divisor))+1
	movf	(SEG7_write_all@value+1),w
	clrf	(___lwmod@dividend+1)
	addwf	(___lwmod@dividend+1)
	movf	(SEG7_write_all@value),w
	clrf	(___lwmod@dividend)
	addwf	(___lwmod@dividend)

	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_SEG7_write_all+0)+0
	movf	(??_SEG7_write_all+0)+0,w
	movwf	(SEG7_write_all@digit4)
	line	17
	
l1659:	
;SEG7_4DIG.c: 17: bool dp1 = (decimal_point & 0x08) >> 3;
	movf	(SEG7_write_all@decimal_point),w
	movwf	(??_SEG7_write_all+0)+0
	movlw	03h
u1335:
	clrc
	rrf	(??_SEG7_write_all+0)+0,f
	addlw	-1
	skipz
	goto	u1335
	movf	0+(??_SEG7_write_all+0)+0,w
	andlw	01h
	movwf	(??_SEG7_write_all+1)+0
	movf	(??_SEG7_write_all+1)+0,w
	movwf	(SEG7_write_all@dp1)
	line	18
	
l1661:	
;SEG7_4DIG.c: 18: bool dp2 = (decimal_point & 0x04) >> 2;
	movf	(SEG7_write_all@decimal_point),w
	movwf	(??_SEG7_write_all+0)+0
	movlw	02h
u1345:
	clrc
	rrf	(??_SEG7_write_all+0)+0,f
	addlw	-1
	skipz
	goto	u1345
	movf	0+(??_SEG7_write_all+0)+0,w
	andlw	01h
	movwf	(??_SEG7_write_all+1)+0
	movf	(??_SEG7_write_all+1)+0,w
	movwf	(SEG7_write_all@dp2)
	line	19
	
l1663:	
;SEG7_4DIG.c: 19: bool dp3 = (decimal_point & 0x02) >> 1;
	movf	(SEG7_write_all@decimal_point),w
	movwf	(??_SEG7_write_all+0)+0
	clrc
	rrf	(??_SEG7_write_all+0)+0,w
	andlw	01h
	movwf	(??_SEG7_write_all+1)+0
	movf	(??_SEG7_write_all+1)+0,w
	movwf	(SEG7_write_all@dp3)
	line	20
	
l1665:	
;SEG7_4DIG.c: 20: bool dp4 = decimal_point & 0x01;
	movf	(SEG7_write_all@decimal_point),w
	andlw	01h
	movwf	(??_SEG7_write_all+0)+0
	movf	(??_SEG7_write_all+0)+0,w
	movwf	(SEG7_write_all@dp4)
	line	22
	
l1667:	
;SEG7_4DIG.c: 22: SEG7_write_digit(1, digit1, dp1);
	movf	(SEG7_write_all@digit1),w
	movwf	(??_SEG7_write_all+0)+0
	movf	(??_SEG7_write_all+0)+0,w
	movwf	(SEG7_write_digit@value)
	movf	(SEG7_write_all@dp1),w
	movwf	(??_SEG7_write_all+1)+0
	movf	(??_SEG7_write_all+1)+0,w
	movwf	(SEG7_write_digit@decimal_point)
	movlw	(01h)
	fcall	_SEG7_write_digit
	line	23
	
l1669:	
;SEG7_4DIG.c: 23: SEG7_write_digit(2, digit2, dp2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SEG7_write_all@digit2),w
	movwf	(??_SEG7_write_all+0)+0
	movf	(??_SEG7_write_all+0)+0,w
	movwf	(SEG7_write_digit@value)
	movf	(SEG7_write_all@dp2),w
	movwf	(??_SEG7_write_all+1)+0
	movf	(??_SEG7_write_all+1)+0,w
	movwf	(SEG7_write_digit@decimal_point)
	movlw	(02h)
	fcall	_SEG7_write_digit
	line	24
	
l1671:	
;SEG7_4DIG.c: 24: SEG7_write_digit(3, digit3, dp3);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SEG7_write_all@digit3),w
	movwf	(??_SEG7_write_all+0)+0
	movf	(??_SEG7_write_all+0)+0,w
	movwf	(SEG7_write_digit@value)
	movf	(SEG7_write_all@dp3),w
	movwf	(??_SEG7_write_all+1)+0
	movf	(??_SEG7_write_all+1)+0,w
	movwf	(SEG7_write_digit@decimal_point)
	movlw	(03h)
	fcall	_SEG7_write_digit
	line	25
	
l1673:	
;SEG7_4DIG.c: 25: SEG7_write_digit(4, digit4, dp4);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SEG7_write_all@digit4),w
	movwf	(??_SEG7_write_all+0)+0
	movf	(??_SEG7_write_all+0)+0,w
	movwf	(SEG7_write_digit@value)
	movf	(SEG7_write_all@dp4),w
	movwf	(??_SEG7_write_all+1)+0
	movf	(??_SEG7_write_all+1)+0,w
	movwf	(SEG7_write_digit@decimal_point)
	movlw	(04h)
	fcall	_SEG7_write_digit
	line	26
	
l248:	
	return
	opt stack 0
GLOBAL	__end_of_SEG7_write_all
	__end_of_SEG7_write_all:
	signat	_SEG7_write_all,8312
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    4[COMMON] unsigned int 
;;  dividend        2    6[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    4[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       1       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SEG7_write_all
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
global __ptext4
__ptext4:	;psect for function ___lwmod
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 4
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l1613:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u1251
	goto	u1250
u1251:
	goto	l1631
u1250:
	line	14
	
l1615:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l1621
	
l683:	
	line	16
	
l1617:	
	movlw	01h
	
u1265:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u1265
	line	17
	
l1619:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l1621
	line	18
	
l682:	
	line	15
	
l1621:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u1271
	goto	u1270
u1271:
	goto	l1617
u1270:
	goto	l1623
	
l684:	
	goto	l1623
	line	19
	
l685:	
	line	20
	
l1623:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u1285
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u1285:
	skipc
	goto	u1281
	goto	u1280
u1281:
	goto	l1627
u1280:
	line	21
	
l1625:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l1627
	
l686:	
	line	22
	
l1627:	
	movlw	01h
	
u1295:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u1295
	line	23
	
l1629:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u1301
	goto	u1300
u1301:
	goto	l1623
u1300:
	goto	l1631
	
l687:	
	goto	l1631
	line	24
	
l681:	
	line	25
	
l1631:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l688
	
l1633:	
	line	26
	
l688:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    1[BANK0 ] unsigned int 
;;  dividend        2    3[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[BANK0 ] unsigned int 
;;  counter         1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    1[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SEG7_write_all
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
global __ptext5
__ptext5:	;psect for function ___lwdiv
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 4
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l1365:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l1367:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u951
	goto	u950
u951:
	goto	l1387
u950:
	line	16
	
l1369:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l1375
	
l673:	
	line	18
	
l1371:	
	movlw	01h
	
u965:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u965
	line	19
	
l1373:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l1375
	line	20
	
l672:	
	line	17
	
l1375:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u971
	goto	u970
u971:
	goto	l1371
u970:
	goto	l1377
	
l674:	
	goto	l1377
	line	21
	
l675:	
	line	22
	
l1377:	
	movlw	01h
	
u985:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u985
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u995
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u995:
	skipc
	goto	u991
	goto	u990
u991:
	goto	l1383
u990:
	line	24
	
l1379:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l1381:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l1383
	line	26
	
l676:	
	line	27
	
l1383:	
	movlw	01h
	
u1005:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u1005
	line	28
	
l1385:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u1011
	goto	u1010
u1011:
	goto	l1377
u1010:
	goto	l1387
	
l677:	
	goto	l1387
	line	29
	
l671:	
	line	30
	
l1387:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l678
	
l1389:	
	line	31
	
l678:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_SEG7_write_digit

;; *************** function _SEG7_write_digit *****************
;; Defined at:
;;		line 28 in file "C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\SEG7_4DIG.c"
;; Parameters:    Size  Location     Type
;;  digit           1    wreg     unsigned char 
;;  value           1    4[COMMON] unsigned char 
;;  decimal_poin    1    5[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  digit           1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SEG7_write_all
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\SEG7_4DIG.c"
	line	28
global __ptext6
__ptext6:	;psect for function _SEG7_write_digit
psect	text6
	file	"C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\SEG7_4DIG.c"
	line	28
	global	__size_of_SEG7_write_digit
	__size_of_SEG7_write_digit	equ	__end_of_SEG7_write_digit-_SEG7_write_digit
	
_SEG7_write_digit:	
;incstack = 0
	opt	stack 4
; Regs used in _SEG7_write_digit: [wreg-fsr0h+status,2+status,0]
;SEG7_write_digit@digit stored from wreg
	movwf	(SEG7_write_digit@digit)
	line	29
	
l1269:	
;SEG7_4DIG.c: 29: RB4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7	;volatile
	line	30
;SEG7_4DIG.c: 30: RB5 = 1;
	bsf	(53/8),(53)&7	;volatile
	line	31
;SEG7_4DIG.c: 31: RB6 = 1;
	bsf	(54/8),(54)&7	;volatile
	line	32
;SEG7_4DIG.c: 32: RB7 = 1;
	bsf	(55/8),(55)&7	;volatile
	line	34
;SEG7_4DIG.c: 34: switch(digit){
	goto	l1273
	line	35
;SEG7_4DIG.c: 35: case 1:
	
l252:	
	line	36
;SEG7_4DIG.c: 36: RB4 = 0;
	bcf	(52/8),(52)&7	;volatile
	line	37
;SEG7_4DIG.c: 37: break;
	goto	l1275
	line	38
;SEG7_4DIG.c: 38: case 2:
	
l254:	
	line	39
;SEG7_4DIG.c: 39: RB5 = 0;
	bcf	(53/8),(53)&7	;volatile
	line	40
;SEG7_4DIG.c: 40: break;
	goto	l1275
	line	41
;SEG7_4DIG.c: 41: case 3:
	
l255:	
	line	42
;SEG7_4DIG.c: 42: RB6 = 0;
	bcf	(54/8),(54)&7	;volatile
	line	43
;SEG7_4DIG.c: 43: break;
	goto	l1275
	line	44
;SEG7_4DIG.c: 44: case 4:
	
l256:	
	line	45
;SEG7_4DIG.c: 45: RB7 = 0;
	bcf	(55/8),(55)&7	;volatile
	line	46
;SEG7_4DIG.c: 46: break;
	goto	l1275
	line	47
	
l1271:	
;SEG7_4DIG.c: 47: }
	goto	l1275
	line	34
	
l251:	
	
l1273:	
	movf	(SEG7_write_digit@digit),w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 1 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           23    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l252
	xorlw	2^1	; case 2
	skipnz
	goto	l254
	xorlw	3^2	; case 3
	skipnz
	goto	l255
	xorlw	4^3	; case 4
	skipnz
	goto	l256
	goto	l1275
	opt asmopt_on

	line	47
	
l253:	
	line	49
	
l1275:	
;SEG7_4DIG.c: 49: PORTD = segNum[value];
	movf	(SEG7_write_digit@value),w
	addlw	_segNum&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	line	50
	
l1277:	
;SEG7_4DIG.c: 50: if(decimal_point){
	movf	(SEG7_write_digit@decimal_point),w
	skipz
	goto	u750
	goto	l1281
u750:
	line	51
	
l1279:	
;SEG7_4DIG.c: 51: PORTD |= 0x80;
	bsf	(8)+(7/8),(7)&7	;volatile
	goto	l1281
	line	52
	
l257:	
	line	54
	
l1281:	
;SEG7_4DIG.c: 52: }
;SEG7_4DIG.c: 54: _delay((unsigned long)((1)*(4000000/4000.0)));
	opt asmopt_off
movlw	249
movwf	(??_SEG7_write_digit+0)+0,f
u1447:
	nop
decfsz	(??_SEG7_write_digit+0)+0,f
	goto	u1447
	nop2	;nop
	nop
opt asmopt_on

	line	55
	
l258:	
	return
	opt stack 0
GLOBAL	__end_of_SEG7_write_digit
	__end_of_SEG7_write_digit:
	signat	_SEG7_write_digit,12408
	global	_RTC_get_year

;; *************** function _RTC_get_year *****************
;; Defined at:
;;		line 115 in file "C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\PIC_DS1302.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_BCD_to_decimal
;;		_RTC_read_register
;; This function is called by:
;;		_displayOnSegment
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\PIC_DS1302.c"
	line	115
global __ptext7
__ptext7:	;psect for function _RTC_get_year
psect	text7
	file	"C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\PIC_DS1302.c"
	line	115
	global	__size_of_RTC_get_year
	__size_of_RTC_get_year	equ	__end_of_RTC_get_year-_RTC_get_year
	
_RTC_get_year:	
;incstack = 0
	opt	stack 3
; Regs used in _RTC_get_year: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	116
	
l1683:	
;PIC_DS1302.c: 116: return BCD_to_decimal(RTC_read_register(0x8C));
	movlw	(08Ch)
	fcall	_RTC_read_register
	fcall	_BCD_to_decimal
	goto	l127
	
l1685:	
	line	117
	
l127:	
	return
	opt stack 0
GLOBAL	__end_of_RTC_get_year
	__end_of_RTC_get_year:
	signat	_RTC_get_year,89
	global	_RTC_get_month

;; *************** function _RTC_get_month *****************
;; Defined at:
;;		line 107 in file "C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\PIC_DS1302.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_BCD_to_decimal
;;		_RTC_read_register
;; This function is called by:
;;		_displayOnSegment
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	line	107
global __ptext8
__ptext8:	;psect for function _RTC_get_month
psect	text8
	file	"C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\PIC_DS1302.c"
	line	107
	global	__size_of_RTC_get_month
	__size_of_RTC_get_month	equ	__end_of_RTC_get_month-_RTC_get_month
	
_RTC_get_month:	
;incstack = 0
	opt	stack 3
; Regs used in _RTC_get_month: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	108
	
l1675:	
;PIC_DS1302.c: 108: return BCD_to_decimal(RTC_read_register(0x88));
	movlw	(088h)
	fcall	_RTC_read_register
	fcall	_BCD_to_decimal
	goto	l121
	
l1677:	
	line	109
	
l121:	
	return
	opt stack 0
GLOBAL	__end_of_RTC_get_month
	__end_of_RTC_get_month:
	signat	_RTC_get_month,89
	global	_RTC_get_minutes

;; *************** function _RTC_get_minutes *****************
;; Defined at:
;;		line 81 in file "C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\PIC_DS1302.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_BCD_to_decimal
;;		_RTC_read_register
;; This function is called by:
;;		_displayOnSegment
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	line	81
global __ptext9
__ptext9:	;psect for function _RTC_get_minutes
psect	text9
	file	"C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\PIC_DS1302.c"
	line	81
	global	__size_of_RTC_get_minutes
	__size_of_RTC_get_minutes	equ	__end_of_RTC_get_minutes-_RTC_get_minutes
	
_RTC_get_minutes:	
;incstack = 0
	opt	stack 3
; Regs used in _RTC_get_minutes: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	82
	
l1635:	
;PIC_DS1302.c: 82: return BCD_to_decimal(RTC_read_register(0x82));
	movlw	(082h)
	fcall	_RTC_read_register
	fcall	_BCD_to_decimal
	goto	l109
	
l1637:	
	line	83
	
l109:	
	return
	opt stack 0
GLOBAL	__end_of_RTC_get_minutes
	__end_of_RTC_get_minutes:
	signat	_RTC_get_minutes,89
	global	_RTC_get_hours

;; *************** function _RTC_get_hours *****************
;; Defined at:
;;		line 85 in file "C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\PIC_DS1302.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  hours           1    8[BANK0 ] unsigned char 
;;  tmp             1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_BCD_to_decimal
;;		_RTC_read_register
;; This function is called by:
;;		_displayOnSegment
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	line	85
global __ptext10
__ptext10:	;psect for function _RTC_get_hours
psect	text10
	file	"C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\PIC_DS1302.c"
	line	85
	global	__size_of_RTC_get_hours
	__size_of_RTC_get_hours	equ	__end_of_RTC_get_hours-_RTC_get_hours
	
_RTC_get_hours:	
;incstack = 0
	opt	stack 3
; Regs used in _RTC_get_hours: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	86
	
l1639:	
;PIC_DS1302.c: 86: unsigned char hours = RTC_read_register(0x84);
	movlw	(084h)
	fcall	_RTC_read_register
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_RTC_get_hours+0)+0
	movf	(??_RTC_get_hours+0)+0,w
	movwf	(RTC_get_hours@hours)
	line	87
	
l1641:	
;PIC_DS1302.c: 87: unsigned char tmp = 0;
	clrf	(RTC_get_hours@tmp)
	line	89
	
l1643:	
;PIC_DS1302.c: 89: if (hours & 0x80){
	btfss	(RTC_get_hours@hours),(7)&7
	goto	u1311
	goto	u1310
u1311:
	goto	l1651
u1310:
	line	91
	
l1645:	
;PIC_DS1302.c: 91: tmp = BCD_to_decimal(hours & 0x1F);
	movf	(RTC_get_hours@hours),w
	andlw	01Fh
	fcall	_BCD_to_decimal
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_RTC_get_hours+0)+0
	movf	(??_RTC_get_hours+0)+0,w
	movwf	(RTC_get_hours@tmp)
	line	93
	
l1647:	
;PIC_DS1302.c: 93: if (hours & 0b00100000){
	btfss	(RTC_get_hours@hours),(5)&7
	goto	u1321
	goto	u1320
u1321:
	goto	l1653
u1320:
	line	94
	
l1649:	
;PIC_DS1302.c: 94: tmp = tmp + 12;
	movf	(RTC_get_hours@tmp),w
	addlw	0Ch
	movwf	(??_RTC_get_hours+0)+0
	movf	(??_RTC_get_hours+0)+0,w
	movwf	(RTC_get_hours@tmp)
	goto	l1653
	line	95
	
l113:	
	line	96
;PIC_DS1302.c: 95: }
;PIC_DS1302.c: 96: } else {
	goto	l1653
	
l112:	
	line	97
	
l1651:	
;PIC_DS1302.c: 97: tmp = BCD_to_decimal(hours & 0x3F);
	movf	(RTC_get_hours@hours),w
	andlw	03Fh
	fcall	_BCD_to_decimal
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_RTC_get_hours+0)+0
	movf	(??_RTC_get_hours+0)+0,w
	movwf	(RTC_get_hours@tmp)
	goto	l1653
	line	98
	
l114:	
	line	100
	
l1653:	
;PIC_DS1302.c: 98: }
;PIC_DS1302.c: 100: return tmp;
	movf	(RTC_get_hours@tmp),w
	goto	l115
	
l1655:	
	line	101
	
l115:	
	return
	opt stack 0
GLOBAL	__end_of_RTC_get_hours
	__end_of_RTC_get_hours:
	signat	_RTC_get_hours,89
	global	_RTC_get_date

;; *************** function _RTC_get_date *****************
;; Defined at:
;;		line 103 in file "C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\PIC_DS1302.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_BCD_to_decimal
;;		_RTC_read_register
;; This function is called by:
;;		_displayOnSegment
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	line	103
global __ptext11
__ptext11:	;psect for function _RTC_get_date
psect	text11
	file	"C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\PIC_DS1302.c"
	line	103
	global	__size_of_RTC_get_date
	__size_of_RTC_get_date	equ	__end_of_RTC_get_date-_RTC_get_date
	
_RTC_get_date:	
;incstack = 0
	opt	stack 3
; Regs used in _RTC_get_date: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	104
	
l1679:	
;PIC_DS1302.c: 104: return BCD_to_decimal(RTC_read_register(0x86));
	movlw	(086h)
	fcall	_RTC_read_register
	fcall	_BCD_to_decimal
	goto	l118
	
l1681:	
	line	105
	
l118:	
	return
	opt stack 0
GLOBAL	__end_of_RTC_get_date
	__end_of_RTC_get_date:
	signat	_RTC_get_date,89
	global	_RTC_read_register

;; *************** function _RTC_read_register *****************
;; Defined at:
;;		line 19 in file "C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\PIC_DS1302.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    1[BANK0 ] unsigned char 
;;  data            1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_RTC_read
;;		_RTC_write
;; This function is called by:
;;		_RTC_get_minutes
;;		_RTC_get_hours
;;		_RTC_get_date
;;		_RTC_get_month
;;		_RTC_get_year
;;		_RTC_get_seconds
;;		_RTC_get_day
;;		_RTC_set_hours
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	line	19
global __ptext12
__ptext12:	;psect for function _RTC_read_register
psect	text12
	file	"C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\PIC_DS1302.c"
	line	19
	global	__size_of_RTC_read_register
	__size_of_RTC_read_register	equ	__end_of_RTC_read_register-_RTC_read_register
	
_RTC_read_register:	
;incstack = 0
	opt	stack 3
; Regs used in _RTC_read_register: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;RTC_read_register@address stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(RTC_read_register@address)
	line	20
	
l1593:	
;PIC_DS1302.c: 20: RC0 = 1;
	bsf	(56/8),(56)&7	;volatile
	line	21
;PIC_DS1302.c: 21: _delay((unsigned long)((4)*(4000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	23
	
l1595:	
;PIC_DS1302.c: 23: RTC_write(address+1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(RTC_read_register@address),w
	addlw	01h
	fcall	_RTC_write
	line	24
;PIC_DS1302.c: 24: unsigned char data = RTC_read();
	fcall	_RTC_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_RTC_read_register+0)+0
	movf	(??_RTC_read_register+0)+0,w
	movwf	(RTC_read_register@data)
	line	26
	
l1597:	
;PIC_DS1302.c: 26: RC0 = 0;
	bcf	(56/8),(56)&7	;volatile
	line	28
	
l1599:	
;PIC_DS1302.c: 28: return data;
	movf	(RTC_read_register@data),w
	goto	l89
	
l1601:	
	line	29
	
l89:	
	return
	opt stack 0
GLOBAL	__end_of_RTC_read_register
	__end_of_RTC_read_register:
	signat	_RTC_read_register,4217
	global	_RTC_read

;; *************** function _RTC_read *****************
;; Defined at:
;;		line 54 in file "C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\PIC_DS1302.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    6[COMMON] int 
;;  data            1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_RTC_read_register
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	line	54
global __ptext13
__ptext13:	;psect for function _RTC_read
psect	text13
	file	"C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\PIC_DS1302.c"
	line	54
	global	__size_of_RTC_read
	__size_of_RTC_read	equ	__end_of_RTC_read-_RTC_read
	
_RTC_read:	
;incstack = 0
	opt	stack 3
; Regs used in _RTC_read: [wreg+status,2+status,0+btemp+1]
	line	55
	
l1205:	
;PIC_DS1302.c: 55: unsigned char data = 0;
	clrf	(RTC_read@data)
	line	57
	
l1207:	
;PIC_DS1302.c: 57: TRISC2 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1082/8)^080h,(1082)&7	;volatile
	line	59
;PIC_DS1302.c: 59: for (int i = 0; i < 8; i++){
	clrf	(RTC_read@i)
	clrf	(RTC_read@i+1)
	
l1209:	
	movf	(RTC_read@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u695
	movlw	low(08h)
	subwf	(RTC_read@i),w
u695:

	skipc
	goto	u691
	goto	u690
u691:
	goto	l100
u690:
	goto	l1223
	
l1211:	
	goto	l1223
	
l100:	
	line	60
;PIC_DS1302.c: 60: RC1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7	;volatile
	line	61
;PIC_DS1302.c: 61: _delay((unsigned long)((1)*(4000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	62
;PIC_DS1302.c: 62: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7	;volatile
	line	63
;PIC_DS1302.c: 63: _delay((unsigned long)((1)*(4000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	65
	
l1213:	
;PIC_DS1302.c: 65: data = data >> 1;
	movf	(RTC_read@data),w
	movwf	(??_RTC_read+0)+0
	clrc
	rrf	(??_RTC_read+0)+0,w
	movwf	(??_RTC_read+1)+0
	movf	(??_RTC_read+1)+0,w
	movwf	(RTC_read@data)
	line	67
	
l1215:	
;PIC_DS1302.c: 67: if (RC2){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(58/8),(58)&7	;volatile
	goto	u701
	goto	u700
u701:
	goto	l1219
u700:
	line	68
	
l1217:	
;PIC_DS1302.c: 68: data = data | 0x80;
	movf	(RTC_read@data),w
	iorlw	080h
	movwf	(??_RTC_read+0)+0
	movf	(??_RTC_read+0)+0,w
	movwf	(RTC_read@data)
	goto	l1219
	line	69
	
l102:	
	line	59
	
l1219:	
	movlw	low(01h)
	addwf	(RTC_read@i),f
	skipnc
	incf	(RTC_read@i+1),f
	movlw	high(01h)
	addwf	(RTC_read@i+1),f
	
l1221:	
	movf	(RTC_read@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u715
	movlw	low(08h)
	subwf	(RTC_read@i),w
u715:

	skipc
	goto	u711
	goto	u710
u711:
	goto	l100
u710:
	goto	l1223
	
l101:	
	line	72
	
l1223:	
;PIC_DS1302.c: 69: }
;PIC_DS1302.c: 70: }
;PIC_DS1302.c: 72: return data;
	movf	(RTC_read@data),w
	goto	l103
	
l1225:	
	line	73
	
l103:	
	return
	opt stack 0
GLOBAL	__end_of_RTC_read
	__end_of_RTC_read:
	signat	_RTC_read,89
	global	_BCD_to_decimal

;; *************** function _BCD_to_decimal *****************
;; Defined at:
;;		line 165 in file "C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\PIC_DS1302.c"
;; Parameters:    Size  Location     Type
;;  bcd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  bcd             1    5[BANK0 ] unsigned char 
;;  decimal         1    4[BANK0 ] unsigned char 
;;  ones            1    3[BANK0 ] unsigned char 
;;  tens            1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___bmul
;; This function is called by:
;;		_RTC_get_minutes
;;		_RTC_get_hours
;;		_RTC_get_date
;;		_RTC_get_month
;;		_RTC_get_year
;;		_RTC_get_seconds
;;		_RTC_get_day
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	line	165
global __ptext14
__ptext14:	;psect for function _BCD_to_decimal
psect	text14
	file	"C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\PIC_DS1302.c"
	line	165
	global	__size_of_BCD_to_decimal
	__size_of_BCD_to_decimal	equ	__end_of_BCD_to_decimal-_BCD_to_decimal
	
_BCD_to_decimal:	
;incstack = 0
	opt	stack 3
; Regs used in _BCD_to_decimal: [wreg+status,2+status,0+pclath+cstack]
;BCD_to_decimal@bcd stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(BCD_to_decimal@bcd)
	line	166
	
l1603:	
;PIC_DS1302.c: 166: unsigned char tens = (bcd >> 4) & 0x0F;
	movf	(BCD_to_decimal@bcd),w
	movwf	(??_BCD_to_decimal+0)+0
	movlw	04h
u1245:
	clrc
	rrf	(??_BCD_to_decimal+0)+0,f
	addlw	-1
	skipz
	goto	u1245
	movf	0+(??_BCD_to_decimal+0)+0,w
	andlw	0Fh
	movwf	(??_BCD_to_decimal+1)+0
	movf	(??_BCD_to_decimal+1)+0,w
	movwf	(BCD_to_decimal@tens)
	line	167
	
l1605:	
;PIC_DS1302.c: 167: unsigned char ones = bcd & 0x0F;
	movf	(BCD_to_decimal@bcd),w
	andlw	0Fh
	movwf	(??_BCD_to_decimal+0)+0
	movf	(??_BCD_to_decimal+0)+0,w
	movwf	(BCD_to_decimal@ones)
	line	168
	
l1607:	
;PIC_DS1302.c: 168: unsigned char decimal = (tens * 10) + ones;
	movlw	(0Ah)
	movwf	(??_BCD_to_decimal+0)+0
	movf	(??_BCD_to_decimal+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(BCD_to_decimal@tens),w
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(BCD_to_decimal@ones),w
	movwf	(??_BCD_to_decimal+1)+0
	movf	(??_BCD_to_decimal+1)+0,w
	movwf	(BCD_to_decimal@decimal)
	line	170
	
l1609:	
;PIC_DS1302.c: 170: return decimal;
	movf	(BCD_to_decimal@decimal),w
	goto	l155
	
l1611:	
	line	171
	
l155:	
	return
	opt stack 0
GLOBAL	__end_of_BCD_to_decimal
	__end_of_BCD_to_decimal:
	signat	_BCD_to_decimal,4217
	global	___bmul

;; *************** function ___bmul *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    7[COMMON] unsigned char 
;;  product         1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_BCD_to_decimal
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
	line	4
global __ptext15
__ptext15:	;psect for function ___bmul
psect	text15
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
	line	4
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
;incstack = 0
	opt	stack 3
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	6
	
l1227:	
	clrf	(___bmul@product)
	goto	l1229
	line	42
	
l359:	
	line	43
	
l1229:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u721
	goto	u720
u721:
	goto	l1233
u720:
	line	44
	
l1231:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l1233
	
l360:	
	line	45
	
l1233:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	46
	
l1235:	
	clrc
	rrf	(___bmul@multiplier),f

	line	47
	
l1237:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u731
	goto	u730
u731:
	goto	l1229
u730:
	goto	l1239
	
l361:	
	line	50
	
l1239:	
	movf	(___bmul@product),w
	goto	l362
	
l1241:	
	line	51
	
l362:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
	global	_SEG7_init

;; *************** function _SEG7_init *****************
;; Defined at:
;;		line 3 in file "C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\SEG7_4DIG.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\SEG7_4DIG.c"
	line	3
global __ptext16
__ptext16:	;psect for function _SEG7_init
psect	text16
	file	"C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\SEG7_4DIG.c"
	line	3
	global	__size_of_SEG7_init
	__size_of_SEG7_init	equ	__end_of_SEG7_init-_SEG7_init
	
_SEG7_init:	
;incstack = 0
	opt	stack 6
; Regs used in _SEG7_init: [status,2]
	line	4
	
l1487:	
;SEG7_4DIG.c: 4: TRISD = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	5
	
l1489:	
;SEG7_4DIG.c: 5: TRISB4 = 0;
	bcf	(1076/8)^080h,(1076)&7	;volatile
	line	6
	
l1491:	
;SEG7_4DIG.c: 6: TRISB5 = 0;
	bcf	(1077/8)^080h,(1077)&7	;volatile
	line	7
	
l1493:	
;SEG7_4DIG.c: 7: TRISB6 = 0;
	bcf	(1078/8)^080h,(1078)&7	;volatile
	line	8
	
l1495:	
;SEG7_4DIG.c: 8: TRISB7 = 0;
	bcf	(1079/8)^080h,(1079)&7	;volatile
	line	9
	
l245:	
	return
	opt stack 0
GLOBAL	__end_of_SEG7_init
	__end_of_SEG7_init:
	signat	_SEG7_init,88
	global	_RTC_set_year

;; *************** function _RTC_set_year *****************
;; Defined at:
;;		line 160 in file "C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\PIC_DS1302.c"
;; Parameters:    Size  Location     Type
;;  year            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  year            1   14[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_RTC_write_register
;;		_decimal_to_BCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\PIC_DS1302.c"
	line	160
global __ptext17
__ptext17:	;psect for function _RTC_set_year
psect	text17
	file	"C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\PIC_DS1302.c"
	line	160
	global	__size_of_RTC_set_year
	__size_of_RTC_set_year	equ	__end_of_RTC_set_year-_RTC_set_year
	
_RTC_set_year:	
;incstack = 0
	opt	stack 4
; Regs used in _RTC_set_year: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;RTC_set_year@year stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(RTC_set_year@year)
	line	161
	
l1705:	
;PIC_DS1302.c: 161: RTC_write_register(0x8C, decimal_to_BCD(year));
	movf	(RTC_set_year@year),w
	fcall	_decimal_to_BCD
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_RTC_set_year+0)+0
	movf	(??_RTC_set_year+0)+0,w
	movwf	(RTC_write_register@data)
	movlw	(08Ch)
	fcall	_RTC_write_register
	line	162
	
l152:	
	return
	opt stack 0
GLOBAL	__end_of_RTC_set_year
	__end_of_RTC_set_year:
	signat	_RTC_set_year,4216
	global	_decimal_to_BCD

;; *************** function _decimal_to_BCD *****************
;; Defined at:
;;		line 173 in file "C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\PIC_DS1302.c"
;; Parameters:    Size  Location     Type
;;  decimal         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  decimal         1   10[BANK0 ] unsigned char 
;;  bcd             1    9[BANK0 ] unsigned char 
;;  ones            1    8[BANK0 ] unsigned char 
;;  tens            1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		_RTC_set_year
;;		_RTC_set_seconds
;;		_RTC_set_minutes
;;		_RTC_set_hours
;;		_RTC_set_date
;;		_RTC_set_month
;;		_RTC_set_day
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	line	173
global __ptext18
__ptext18:	;psect for function _decimal_to_BCD
psect	text18
	file	"C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\PIC_DS1302.c"
	line	173
	global	__size_of_decimal_to_BCD
	__size_of_decimal_to_BCD	equ	__end_of_decimal_to_BCD-_decimal_to_BCD
	
_decimal_to_BCD:	
;incstack = 0
	opt	stack 4
; Regs used in _decimal_to_BCD: [wreg+status,2+status,0+pclath+cstack]
;decimal_to_BCD@decimal stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(decimal_to_BCD@decimal)
	line	174
	
l1467:	
;PIC_DS1302.c: 174: unsigned char tens = decimal / 10;
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(decimal_to_BCD@decimal),w
	movwf	(??_decimal_to_BCD+0)+0
	clrf	(??_decimal_to_BCD+0)+0+1
	movf	0+(??_decimal_to_BCD+0)+0,w
	movwf	(___awdiv@dividend)
	movf	1+(??_decimal_to_BCD+0)+0,w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_decimal_to_BCD+2)+0
	movf	(??_decimal_to_BCD+2)+0,w
	movwf	(decimal_to_BCD@tens)
	line	175
;PIC_DS1302.c: 175: unsigned char ones = decimal % 10;
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	movf	(decimal_to_BCD@decimal),w
	movwf	(??_decimal_to_BCD+0)+0
	clrf	(??_decimal_to_BCD+0)+0+1
	movf	0+(??_decimal_to_BCD+0)+0,w
	movwf	(___awmod@dividend)
	movf	1+(??_decimal_to_BCD+0)+0,w
	movwf	(___awmod@dividend+1)
	fcall	___awmod
	movf	(0+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_decimal_to_BCD+2)+0
	movf	(??_decimal_to_BCD+2)+0,w
	movwf	(decimal_to_BCD@ones)
	line	176
	
l1469:	
;PIC_DS1302.c: 176: unsigned char bcd = (tens << 4) | ones;
	movf	(decimal_to_BCD@tens),w
	movwf	(??_decimal_to_BCD+0)+0
	movlw	(04h)-1
u1135:
	clrc
	rlf	(??_decimal_to_BCD+0)+0,f
	addlw	-1
	skipz
	goto	u1135
	clrc
	rlf	(??_decimal_to_BCD+0)+0,w
	iorwf	(decimal_to_BCD@ones),w
	movwf	(??_decimal_to_BCD+1)+0
	movf	(??_decimal_to_BCD+1)+0,w
	movwf	(decimal_to_BCD@bcd)
	line	178
	
l1471:	
;PIC_DS1302.c: 178: return bcd;
	movf	(decimal_to_BCD@bcd),w
	goto	l158
	
l1473:	
	line	179
	
l158:	
	return
	opt stack 0
GLOBAL	__end_of_decimal_to_BCD
	__end_of_decimal_to_BCD:
	signat	_decimal_to_BCD,4217
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    4[COMMON] int 
;;  dividend        2    6[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    1[BANK0 ] unsigned char 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    4[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       2       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_decimal_to_BCD
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
global __ptext19
__ptext19:	;psect for function ___awmod
psect	text19
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	stack 4
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
l1327:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awmod@sign)
	line	14
	
l1329:	
	btfss	(___awmod@dividend+1),7
	goto	u861
	goto	u860
u861:
	goto	l1335
u860:
	line	15
	
l1331:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l1333:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	l1335
	line	17
	
l477:	
	line	18
	
l1335:	
	btfss	(___awmod@divisor+1),7
	goto	u871
	goto	u870
u871:
	goto	l1339
u870:
	line	19
	
l1337:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l1339
	
l478:	
	line	20
	
l1339:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u881
	goto	u880
u881:
	goto	l1357
u880:
	line	21
	
l1341:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l1347
	
l481:	
	line	23
	
l1343:	
	movlw	01h
	
u895:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u895
	line	24
	
l1345:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l1347
	line	25
	
l480:	
	line	22
	
l1347:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u901
	goto	u900
u901:
	goto	l1343
u900:
	goto	l1349
	
l482:	
	goto	l1349
	line	26
	
l483:	
	line	27
	
l1349:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u915
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u915:
	skipc
	goto	u911
	goto	u910
u911:
	goto	l1353
u910:
	line	28
	
l1351:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l1353
	
l484:	
	line	29
	
l1353:	
	movlw	01h
	
u925:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u925
	line	30
	
l1355:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u931
	goto	u930
u931:
	goto	l1349
u930:
	goto	l1357
	
l485:	
	goto	l1357
	line	31
	
l479:	
	line	32
	
l1357:	
	movf	(___awmod@sign),w
	skipz
	goto	u940
	goto	l1361
u940:
	line	33
	
l1359:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l1361
	
l486:	
	line	34
	
l1361:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l487
	
l1363:	
	line	35
	
l487:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    4[COMMON] int 
;;  dividend        2    6[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    2[BANK0 ] int 
;;  sign            1    1[BANK0 ] unsigned char 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    4[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       4       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_decimal_to_BCD
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
global __ptext20
__ptext20:	;psect for function ___awdiv
psect	text20
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 4
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l1283:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	15
	
l1285:	
	btfss	(___awdiv@divisor+1),7
	goto	u761
	goto	u760
u761:
	goto	l1291
u760:
	line	16
	
l1287:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l1289:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	goto	l1291
	line	18
	
l464:	
	line	19
	
l1291:	
	btfss	(___awdiv@dividend+1),7
	goto	u771
	goto	u770
u771:
	goto	l1297
u770:
	line	20
	
l1293:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l1295:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l1297
	line	22
	
l465:	
	line	23
	
l1297:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l1299:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u781
	goto	u780
u781:
	goto	l1319
u780:
	line	25
	
l1301:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l1307
	
l468:	
	line	27
	
l1303:	
	movlw	01h
	
u795:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u795
	line	28
	
l1305:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l1307
	line	29
	
l467:	
	line	26
	
l1307:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u801
	goto	u800
u801:
	goto	l1303
u800:
	goto	l1309
	
l469:	
	goto	l1309
	line	30
	
l470:	
	line	31
	
l1309:	
	movlw	01h
	
u815:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u815
	line	32
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u825
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u825:
	skipc
	goto	u821
	goto	u820
u821:
	goto	l1315
u820:
	line	33
	
l1311:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l1313:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l1315
	line	35
	
l471:	
	line	36
	
l1315:	
	movlw	01h
	
u835:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u835
	line	37
	
l1317:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u841
	goto	u840
u841:
	goto	l1309
u840:
	goto	l1319
	
l472:	
	goto	l1319
	line	38
	
l466:	
	line	39
	
l1319:	
	movf	(___awdiv@sign),w
	skipz
	goto	u850
	goto	l1323
u850:
	line	40
	
l1321:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l1323
	
l473:	
	line	41
	
l1323:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l474
	
l1325:	
	line	42
	
l474:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_RTC_init

;; *************** function _RTC_init *****************
;; Defined at:
;;		line 3 in file "C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\PIC_DS1302.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_RTC_write_protect
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\PIC_DS1302.c"
	line	3
global __ptext21
__ptext21:	;psect for function _RTC_init
psect	text21
	file	"C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\PIC_DS1302.c"
	line	3
	global	__size_of_RTC_init
	__size_of_RTC_init	equ	__end_of_RTC_init-_RTC_init
	
_RTC_init:	
;incstack = 0
	opt	stack 3
; Regs used in _RTC_init: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	4
	
l1701:	
;PIC_DS1302.c: 4: TRISC1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1081/8)^080h,(1081)&7	;volatile
	line	5
;PIC_DS1302.c: 5: TRISC2 = 0;
	bcf	(1082/8)^080h,(1082)&7	;volatile
	line	6
;PIC_DS1302.c: 6: TRISC0 = 0;
	bcf	(1080/8)^080h,(1080)&7	;volatile
	line	8
;PIC_DS1302.c: 8: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7	;volatile
	line	9
;PIC_DS1302.c: 9: RC2 = 0;
	bcf	(58/8),(58)&7	;volatile
	line	10
;PIC_DS1302.c: 10: RC0 = 0;
	bcf	(56/8),(56)&7	;volatile
	line	12
	
l1703:	
;PIC_DS1302.c: 12: RTC_write_protect(RTC_WRITE_PROTECT);
	movf	(_RTC_WRITE_PROTECT),w
	fcall	_RTC_write_protect
	line	13
	
l83:	
	return
	opt stack 0
GLOBAL	__end_of_RTC_init
	__end_of_RTC_init:
	signat	_RTC_init,88
	global	_RTC_write_protect

;; *************** function _RTC_write_protect *****************
;; Defined at:
;;		line 15 in file "C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\PIC_DS1302.c"
;; Parameters:    Size  Location     Type
;;  state           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  state           1   15[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_RTC_write_register
;; This function is called by:
;;		_RTC_init
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	line	15
global __ptext22
__ptext22:	;psect for function _RTC_write_protect
psect	text22
	file	"C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\PIC_DS1302.c"
	line	15
	global	__size_of_RTC_write_protect
	__size_of_RTC_write_protect	equ	__end_of_RTC_write_protect-_RTC_write_protect
	
_RTC_write_protect:	
;incstack = 0
	opt	stack 3
; Regs used in _RTC_write_protect: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;RTC_write_protect@state stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(RTC_write_protect@state)
	line	16
	
l1687:	
;PIC_DS1302.c: 16: RTC_write_register(0x8C, state << 7);
	movf	(RTC_write_protect@state),w
	movwf	(??_RTC_write_protect+0)+0
	movlw	(07h)-1
u1355:
	clrc
	rlf	(??_RTC_write_protect+0)+0,f
	addlw	-1
	skipz
	goto	u1355
	clrc
	rlf	(??_RTC_write_protect+0)+0,w
	movwf	(??_RTC_write_protect+1)+0
	movf	(??_RTC_write_protect+1)+0,w
	movwf	(RTC_write_register@data)
	movlw	(08Ch)
	fcall	_RTC_write_register
	line	17
	
l86:	
	return
	opt stack 0
GLOBAL	__end_of_RTC_write_protect
	__end_of_RTC_write_protect:
	signat	_RTC_write_protect,4216
	global	_RTC_write_register

;; *************** function _RTC_write_register *****************
;; Defined at:
;;		line 31 in file "C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\PIC_DS1302.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;;  data            1   11[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_RTC_write
;; This function is called by:
;;		_RTC_write_protect
;;		_RTC_set_year
;;		_RTC_set_seconds
;;		_RTC_set_minutes
;;		_RTC_set_hours
;;		_RTC_set_date
;;		_RTC_set_month
;;		_RTC_set_day
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1
	line	31
global __ptext23
__ptext23:	;psect for function _RTC_write_register
psect	text23
	file	"C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\PIC_DS1302.c"
	line	31
	global	__size_of_RTC_write_register
	__size_of_RTC_write_register	equ	__end_of_RTC_write_register-_RTC_write_register
	
_RTC_write_register:	
;incstack = 0
	opt	stack 4
; Regs used in _RTC_write_register: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;RTC_write_register@address stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(RTC_write_register@address)
	line	32
	
l1587:	
;PIC_DS1302.c: 32: RC0 = 1;
	bsf	(56/8),(56)&7	;volatile
	line	33
;PIC_DS1302.c: 33: _delay((unsigned long)((4)*(4000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	35
	
l1589:	
;PIC_DS1302.c: 35: RTC_write(address);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(RTC_write_register@address),w
	fcall	_RTC_write
	line	36
;PIC_DS1302.c: 36: RTC_write(data);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(RTC_write_register@data),w
	fcall	_RTC_write
	line	38
	
l1591:	
;PIC_DS1302.c: 38: RC0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7	;volatile
	line	39
	
l92:	
	return
	opt stack 0
GLOBAL	__end_of_RTC_write_register
	__end_of_RTC_write_register:
	signat	_RTC_write_register,8312
	global	_RTC_write

;; *************** function _RTC_write *****************
;; Defined at:
;;		line 41 in file "C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\PIC_DS1302.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    5[COMMON] unsigned char 
;;  i               2    6[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_RTC_read_register
;;		_RTC_write_register
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1
	line	41
global __ptext24
__ptext24:	;psect for function _RTC_write
psect	text24
	file	"C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\PIC_DS1302.c"
	line	41
	global	__size_of_RTC_write
	__size_of_RTC_write	equ	__end_of_RTC_write-_RTC_write
	
_RTC_write:	
;incstack = 0
	opt	stack 3
; Regs used in _RTC_write: [wreg+status,2+status,0+btemp+1]
;RTC_write@data stored from wreg
	movwf	(RTC_write@data)
	line	42
	
l1185:	
;PIC_DS1302.c: 42: TRISC2 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1082/8)^080h,(1082)&7	;volatile
	line	44
	
l1187:	
;PIC_DS1302.c: 44: for (int i = 0; i < 8; i++){
	clrf	(RTC_write@i)
	clrf	(RTC_write@i+1)
	
l1189:	
	movf	(RTC_write@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u645
	movlw	low(08h)
	subwf	(RTC_write@i),w
u645:

	skipc
	goto	u641
	goto	u640
u641:
	goto	l95
u640:
	goto	l97
	
l1191:	
	goto	l97
	
l95:	
	line	45
;PIC_DS1302.c: 45: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7	;volatile
	line	46
;PIC_DS1302.c: 46: _delay((unsigned long)((1)*(4000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	47
	
l1193:	
;PIC_DS1302.c: 47: RC2 = (data >> i) & 0x01;
	movf	(RTC_write@data),w
	movwf	(??_RTC_write+0)+0
	incf	(RTC_write@i),w
	goto	u654
u655:
	clrc
	rrf	(??_RTC_write+0)+0,f
u654:
	addlw	-1
	skipz
	goto	u655
	btfsc	0+(??_RTC_write+0)+0,0
	goto	u661
	goto	u660
	
u661:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7	;volatile
	goto	u674
u660:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
u674:
	line	48
	
l1195:	
;PIC_DS1302.c: 48: _delay((unsigned long)((1)*(4000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	49
	
l1197:	
;PIC_DS1302.c: 49: RC1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7	;volatile
	line	50
	
l1199:	
;PIC_DS1302.c: 50: _delay((unsigned long)((1)*(4000000/4000000.0)));
		opt asmopt_off
	nop
	opt asmopt_on

	line	44
	
l1201:	
	movlw	low(01h)
	addwf	(RTC_write@i),f
	skipnc
	incf	(RTC_write@i+1),f
	movlw	high(01h)
	addwf	(RTC_write@i+1),f
	
l1203:	
	movf	(RTC_write@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u685
	movlw	low(08h)
	subwf	(RTC_write@i),w
u685:

	skipc
	goto	u681
	goto	u680
u681:
	goto	l95
u680:
	goto	l97
	
l96:	
	line	52
	
l97:	
	return
	opt stack 0
GLOBAL	__end_of_RTC_write
	__end_of_RTC_write:
	signat	_RTC_write,4216
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 27 in file "C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1
	file	"C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\main.c"
	line	27
global __ptext25
__ptext25:	;psect for function _ISR
psect	text25
	file	"C:\Users\Andre\Documents\Coding Main\PIC-Alarm-Clock\MPLAB Source\main.c"
	line	27
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 3
; Regs used in _ISR: [wreg+status,2+btemp+1]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+0)
	movf	fsr0,w
	movwf	(??_ISR+1)
	movf	pclath,w
	movwf	(??_ISR+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+3)
	ljmp	_ISR
psect	text25
	line	28
	
i1l1519:	
;main.c: 28: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	30
;main.c: 30: if (INTF){
	btfss	(89/8),(89)&7	;volatile
	goto	u120_21
	goto	u120_20
u120_21:
	goto	i1l1529
u120_20:
	line	31
	
i1l1521:	
;main.c: 31: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	33
	
i1l1523:	
;main.c: 33: phase++;
	movlw	low(01h)
	addwf	(_phase),f
	skipnc
	incf	(_phase+1),f
	movlw	high(01h)
	addwf	(_phase+1),f
	line	35
	
i1l1525:	
;main.c: 35: if (phase >= 3){
	movf	(_phase+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u121_25
	movlw	low(03h)
	subwf	(_phase),w
u121_25:

	skipc
	goto	u121_21
	goto	u121_20
u121_21:
	goto	i1l1529
u121_20:
	line	36
	
i1l1527:	
;main.c: 36: phase = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_phase)
	clrf	(_phase+1)
	goto	i1l1529
	line	37
	
i1l38:	
	goto	i1l1529
	line	39
	
i1l37:	
	line	41
	
i1l1529:	
;main.c: 37: }
;main.c: 39: }
;main.c: 41: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	42
	
i1l39:	
	movf	(??_ISR+3),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(??_ISR+2),w
	movwf	pclath
	movf	(??_ISR+1),w
	movwf	fsr0
	swapf	(??_ISR+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
