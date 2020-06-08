;Aula 8 exemplo 3





;  /===============================================================================\
; | Projeto:  T�TULO																|	
; |																					|
; | Autor: NOME DO ESTUDANTE AQUI													|
; | Idioma: NOME DA L�NGUA EM QUE O PROGRAMA EST� ESCRITO E							|
; |			O NOME DO COMPILADOR USADO PARA COMPIL�-LO QUANDO FOI TESTADO			|
; | Solu��o: NOME DA SUA SOLU��O ATMEL STUDIO 7 (Template neste exemplo)			|
; |																					|
; | Projetos: AssemblerTargetTeamplate												|
; |																					|
; | Para compilar: Explique como compilar este programa	                            |
; |																					|
; |Exemplo: Para compilar este c�digo, dever� ter o compilador AVRASM2.exe (windows)|
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
; | Software: NOME E T�TULO DA CLASSE PARA QUE ESTE PROGRAMA FOI ESCRITO			|
; |																					|
; | Vers�o do SO: SEU N�MERO DE VERS�O DO PROGRAMA DE COMPUTADOR					|
; |																					|
; | Plataforma: SEU PROGRAMA DE COMPUTADOR											|
; |																					|
; | Instrutor: NOME DO INSTRUTOR DO SEU CURSO										|
; |																					|
; | Data de vencimento: DATA E HORA EM QUE ESTE PROGRAMA � / DEVIA SER				|
; | SUBMETIDO																		|
; |																					|
; + --------------------------------------------------------------------------------+
; |																					|
; | Descri��o: DESCREVA O PROBLEMA DE QUE ESTE PROGRAMA FOI ESCRITO RESOLVER.		|
; |																					|
; | Entrada: DESCREVA A ENTRADA QUE O PROGRAMA EXIGE.								|
; |																					|
; | Sa�da: DESCREVA A SA�DA QUE O PROGRAMA PRODUZ.									|
; |																					|
; | Algoritmo: ESBO�O DA ABORDAGEM USADA PELO PROGRAMA PARA RESOLVER O PROBLEMA.	|
; |																					|
; | Recursos necess�rios n�o inclu�dos: DESCREVA AQUI QUALQUER REQUISITO DE			|
; | A tarefa que o programa n�o tenta resolver.										|
; |																					|
; | Erros conhecidos: SE O PROGRAMA N�O FUNCIONAR CORRETAMENTE EM ALGUNS			|
; |					  SITUA��ES, DESCREVA AS SITUA��ES E PROBLEMAS AQUI.			|
; |																					|
;  \===============================================================================/


;.INCLUDE "atmega328p.inc"  ; seu arquivo principal de mapeamento das vari�veis   
.device		atmega328P
.nolist
.list

;============
;Declara��es:



.ORG 0x0000              ; instru��o inicial, � onde se inicia a mem�ria de programa
    rjmp INICIO           ; O vetor de rein�cio: pula para �main�
      ;***coloque suas vari�veis e declara��es aqui***   
	;Exemplo: 
	;.def	temp	=r16
 
INICIO:
      ;***c�digo principal vai aqui, inicializa��es e etc...***
		ldi r16,0b01 ; Armazena 0b01 em bin�rio no r16
		out ddrb,r16 ; Coloca o o bit 0 do registro portb como sa�da e o bit 1 como entrada
		nop ; gasta 1 ciclo de tempo


LOOP:
      ;*** rotinas de repeti��o ***
		in r0,pinb ; L� o pinb como entrada utilizando o r0
		mov r16,r0 ; Transfere r0 para o r16
		andi r16,0b10 ; Isola bit 1 , zera os outros bits
		; andi r0,0b10 ; Esta instru��o dar� erro, andi n�o pode usar r0 at� r15
		
		asr r16 ; Deslocamento aritim�trico para a direita.                           
		out portb,r16 ; Output r16 to portb.										 

   rjmp LOOP                 



      ;***seus procedimentos de atua��o finitas v�o aqui aqui o  programa vai finalizar no final***
.EXIT 


