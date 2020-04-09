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
	.def	temp	=r16

 
INICIO:
DDRA = 0b11111111;
DDRB = 0b11111111;   
DDRC = 0b11111111;
DDRD = 0b11111111;            

LOOP:
      ;*** rotinas de repetição ***
PORTA=0b11111111;
delay_ms(500);
PORTA=0b00000000;
delay_ms(500);
PORTB=0b11111111;
delay_ms(500);
PORTB=0b00000000;
delay_ms(500);
PORTC=0b11111111;
delay_ms(500);
PORTC=0b00000000;
delay_ms(500);
PORTD=0b11111111;
delay_ms(500);
PORTD=0b00000000;


   rjmp LOOP                 
      ;***seus procedimentos de atuação finitas vão aqui aqui o  programa vai finalizar no final***
.EXIT 