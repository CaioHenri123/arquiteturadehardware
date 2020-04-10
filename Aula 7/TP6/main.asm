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
	.def	tempb =r16
        .def	tempc =r19
        .def    tempd =r22
	

 
INICIO:
ldi tempb,0xff; 0b11111111
out ddrb,tempb

ldi r17,0x00
ldi r18,0xff

ldi tempc,0xff; 0b11111111
out ddrc,tempc

ldi r20,0x00
ldi r21,0xff

ldi tempd,0xff; 0b11111111
out ddrd,tempd

ldi r23,0x00
ldi r24,0xff

LOOP:
      ;*** rotinas de repetição ***
out portb,r17
out portb,r18
out portc,r20
out portc,r21
out portd,r23
out portd,r24



   rjmp LOOP                 
      ;***seus procedimentos de atuação finitas vão aqui aqui o  programa vai finalizar no final***
.EXIT 
