.INCLUDE "atmega328p.inc"  
.device		atmega328P
.nolist
.list





.ORG 0x0000             
    rjmp INICIO           
   
 
INICIO:
     ldi r16, 0xff
	 ldi r17, 0x00
	 out ddrb, r16
	 out ddrc, r16
	 out ddrd, r16
LOOP:
     out portb, r16
	 out portc, r16
	 out portd, r16
	 out portb, r17
	 out portc, r17
	 out portd, r17 
   rjmp LOOP                 
      
.EXIT 