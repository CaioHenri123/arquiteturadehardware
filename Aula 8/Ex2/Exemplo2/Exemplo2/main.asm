;Aula 8 exemplo 2



;  /===============================================================================\
; | Projeto:  TÍTULO																|	
; |																					|
; | Autor: NOME DO ESTUDANTE AQUI													|
; | Idioma: NOME DA LÍNGUA EM QUE O PROGRAMA ESTÁ ESCRITO E							|
; |			O NOME DO COMPILADOR USADO PARA COMPILÁ-LO QUANDO FOI TESTADO			|
; | Solução: NOME DA SUA SOLUÇÃO ATMEL STUDIO 7 (Template neste exemplo)			|
; |																					|
; | Projetos: AssemblerTargetTeamplate												|
; |																					|
; | Para compilar: Explique como compilar este programa	                            |
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
; | Software: NOME E TÍTULO DA CLASSE PARA QUE ESTE PROGRAMA FOI ESCRITO			|
; |																					|
; | Versão do SO: SEU NÚMERO DE VERSÃO DO PROGRAMA DE COMPUTADOR					|
; |																					|
; | Plataforma: SEU PROGRAMA DE COMPUTADOR											|
; |																					|
; | Instrutor: NOME DO INSTRUTOR DO SEU CURSO										|
; |																					|
; | Data de vencimento: DATA E HORA EM QUE ESTE PROGRAMA É / DEVIA SER				|
; | SUBMETIDO																		|
; |																					|
; + --------------------------------------------------------------------------------+
; |																					|
; | Descrição: DESCREVA O PROBLEMA DE QUE ESTE PROGRAMA FOI ESCRITO RESOLVER.		|
; |																					|
; | Entrada: DESCREVA A ENTRADA QUE O PROGRAMA EXIGE.								|
; |																					|
; | Saída: DESCREVA A SAÍDA QUE O PROGRAMA PRODUZ.									|
; |																					|
; | Algoritmo: ESBOÇO DA ABORDAGEM USADA PELO PROGRAMA PARA RESOLVER O PROBLEMA.	|
; |																					|
; | Recursos necessários não incluídos: DESCREVA AQUI QUALQUER REQUISITO DE			|
; | A tarefa que o programa não tenta resolver.										|
; |																					|
; | Erros conhecidos: SE O PROGRAMA NÃO FUNCIONAR CORRETAMENTE EM ALGUNS			|
; |					  SITUAÇÕES, DESCREVA AS SITUAÇÕES E PROBLEMAS AQUI.			|
; |																					|
;  \===============================================================================/


;.INCLUDE "atmega328p.inc"  ; seu arquivo principal de mapeamento das variáveis   
.device		atmega328P
.nolist
.list

;============
;Declarações:



.ORG 0x0000              ; instrução inicial, é onde se inicia a memória de programa
    rjmp INICIO           ; O vetor de reinício: pula para “main”
      ;***coloque suas variáveis e declarações aqui***   
	;Exemplo: 
	;.def	temp	=r16
 
INICIO:
      ;***código principal vai aqui, inicializações e etc...***
		ldi r16,0x12 ; carrego de forma imediata no registro r16 com o valor $12 = 0x12
		ldi r17,22 ;carrego de forma imediata no registro r17 com o valor $22
		ldi r18,0b00001111 ;carrego de forma imediata no registro r16 com o valor 0b00001111 # 1111
LOOP:
      ;*** rotinas de repetição ***
		inc r0 ;incrementa r0
		dec r1 ;decrementa r1
		add r2,r1 ;r2 = r2 + r1
		sub r13,r17 ;r13 = r13 - r17
		subi r22,11
	    ;subi r2,11																					;Error. Não se pode usar subi ou ldi em r0 até r15 
	    ;addi r22,11																					;Error. Não existe addi
		rcall delay ;Call a subroutine.

   rjmp LOOP                 

   ; — — — — — — — — — — — — — — — — — — — — — — — — — — — — A subroutine
delay:
		nop ; no operation
		ret ; return from subroutine.
; — — — — — — — — — — — — — — — — — — — — — — — — — — — —

      ;***seus procedimentos de atuação finitas vão aqui aqui o  programa vai finalizar no final***
.EXIT 