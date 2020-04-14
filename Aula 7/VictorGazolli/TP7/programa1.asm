; programa 1 
; Desenvolva em assembly a solução para esta equação:
; ( 0x37 + 45 ) - ( 0b00111000 + 0x2B )


.INCLUDE "atmega328p.inc"
.device		atmega328P
.nolist
.list
.ORG 0x0000
	rjmp start
	
start:
	ldi r17, 0x37
	ldi r18, 45
	; r17 <- 0x37 + 45 
	add r17, r18

	ldi r18, 0b00111000
	ldi r19, 0x2B
	; r18 <- 0b00111000 + 0x2B 
	add r18, r19

	; r17 <- r17 + r18 
	sub r17, r18 
