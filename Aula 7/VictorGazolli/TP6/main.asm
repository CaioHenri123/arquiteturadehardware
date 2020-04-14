; TP-06:
;Usando o template em assembly, declare a todas as portas como saida, e fa�a cada uma delas alternarem de estado dentro de um loop infinito;


.INCLUDE "atmega328p.inc"
.device		atmega328P
.nolist
.list
.ORG 0x0000
	rjmp start
	
start:
	ldi r16, 0xFF
	out ddrb, r16 ; all ports b output
	ldi r18, 0x00 ; ALL LOW
	
loop:
	out portb, r16		; portb -> high
	out portb, r18		; portb -> low
rjmp LOOP                 
