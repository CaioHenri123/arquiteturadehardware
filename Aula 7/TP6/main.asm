; TP-06:
;Usando o template em assembly, declare a todas as portas como saida, e faça cada uma delas alternarem de estado dentro de um loop infinito;






;  /===============================================================================\
; | Projeto:  TÍTULO																|	
; |																					|
; | Autor: Marcelo Patricio Ra:143769													|
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
	.def	tempb =r16
        
	

 
INICIO:
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




   rjmp LOOP                 
      ;***seus procedimentos de atuação finitas vão aqui aqui o  programa vai finalizar no final***
.EXIT 
