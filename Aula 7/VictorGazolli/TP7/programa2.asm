; programa 2
; Desenvolva em assembly a solução para esta equação:
; ( 56 + 0b00101011 ) 0 ( 0b00110111 + 0x2D )


.INCLUDE "atmega328p.inc"
.device		atmega328P
.nolist
.list
.ORG 0x0000
	rjmp start
	
start:
	ldi r17, 56 
	ldi r18, 0b00101011
	; r17 <- 56 + 0b00101011 
	add r17, r18

	ldi r18, 0b00110111
	ldi r19, 0x2D
	; r18 <- 0b00110111 + 0x2D 
	add r18, r19

	; r17 <- r17 + r18 
	sub r17, r18 
