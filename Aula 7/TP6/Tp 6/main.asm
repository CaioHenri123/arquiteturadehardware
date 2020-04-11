; TP-06:
;Usando o template em assembly, declare a todas as portas como saida, e faça cada uma delas alternarem de estado dentro de um loop infinito;






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


.INCLUDE "atmega328p.inc"  ; seu arquivo principal de mapeamento das variáveis   
.device		atmega328P
.nolist
.list

.ORG 0x0000              ; instrução inicial, é onde se inicia a memória de programa
    rjmp INICIO           ; O vetor de reinício: pula para “main”
     
INICIO:
     ldi r18, 0xff
	 ldi r16, 0x00
	 out ddrb, r15
	 out ddrc, r15
	 out ddrd, r15
LOOP:
     out portb, r18
	 out portc, r18
	 out portd, r18

	 out portb, r16
	 out portc, r16
	 out portd, r16
   rjmp LOOP                 
.EXIT 