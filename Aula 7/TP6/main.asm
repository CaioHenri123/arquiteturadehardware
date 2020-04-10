; TP-06:
;Usando o template em assembly, declare a todas as portas como saida, e faça cada uma delas alternarem de estado dentro de um loop infinito;






;  /===============================================================================\
; | Projeto:  TÍTULO																|	
; |																					|
; | Autor: Rodrigo Gradela da Graça Ra:146326													|
; | Idioma: ASSEMBLY e AVRASM2.exe			|
; | Solução: NOME DA SUA SOLUÇÃO ATMEL STUDIO 7 (Template neste exemplo)			|
; |																					|
; | Projetos: AssemblerTargetTeamplate												|
; |																					|
; | Para compilar: Através compilador AVRASM2.exe                         |
; |																					|
; |Exemplo: Para compilar este código, deverá ter o compilador AVRASM2.exe (windows)|
; | no prompt de comando (MS-DOS):													|
; |																					|
; |      avrasm2.exe -fI -o "Teamplate.hex"											|
; |						 -m "Teamplate.map"											|
; | 					 -l "Teamplate.lss"											|	
; |						 -e "Teamplate.eep"											|  
; |						 -S "Teamplate.tmp"											|	  
; |						 -W+ie  -d "Debug\Teamplate.obj"							|
; |						 main.asm													|
; |																					|
; | Software: Atmel Studio 7.0			|
; |																					|
; | Versão do SO: versão de entrega do tp6					|
; |																					|

; | Instrutor: Sergio Schina									|
; |																					|
; + --------------------------------------------------------------------------------+
; |																			
;  \===============================================================================/


.INCLUDE "atmega328p.inc"  ; seu arquivo principal de mapeamento das variáveis   
.device		atmega328P
.nolist
.list

;============
;Declarações:



.ORG 0x0000              ; instrução inicial, é onde se inicia a memória de programa
    rjmp INICIO           ; O vetor de reinício: pula para “main”
      ;***coloque suas variáveis e declarações aqui***   
	;Exemplo: 
	.def	pa =r16
	.def	pb =r23
	.def	pc =r24
	.def	pd =r25

 
INICIO:
LDI pa,0b11111111;
OUT DDRA,pa;
LDI PB,0b11111111;   
OUT DDRB,pb;
LDI pc,0b11111111;
OUT DDRC,pc;
LDI pd,0b11111111;
OUT DDRD,pd;

LOOP:
      ;*** rotinas de repetição ***
LDI pa,0x00;
OUT PORTA,pa;
delay_ms(500);
LDI pa,0xFF;
OUT PORTA,pa;
delay_ms(500);
LDI pb,0x00;
OUT PORTB,pb;
delay_ms(500);
LDI pb,0xFF;
OUT PORTB,pb;
delay_ms(500);
LDI pc,0x00;
OUT PORTC,pc;
delay_ms(500);
LDI pc,0xFF;
OUT PORTC,pc;
delay_ms(500);
LDI pd,0x00;
OUT PORTD,pa;
delay_ms(500);
LDI pd,0xFF;
OUT PORTD,pd;
delay_ms(500);



   rjmp LOOP                 
      ;***seus procedimentos de atuação finitas vão aqui aqui o  programa vai finalizar no final***
.EXIT 
