#Escreva um programa em Assembly para MIPS que conte os elementos de um array disponível na memória (.data). O programa deverá mostrar também quantos elementos são número par e quantos elementos são número ímpar. O array termina com o valor 0 (zero); este elemento não entra nas contas. Na secção .data o array pode ser declarado da seguinte forma (valores exemplificativos):
#array:      .word     13, 17, 13, 32, 29, 15, 2, 31, 0
#O seu programa deverá respeitar os seguintes passos:
#1) Invoque a função CONTAGEM que contará os elementos do array e retorne este valor;
#2) Mostre ao utilizador o resultado da contagem; i.e., o numero de elementos do array, exceptuando o elemento zero (último);
#3) Invoque a função PARIMPAR que conta os elementos pares e os elementos ímpares do array. Esta função deverá retornar os valores das quantidades PARES e IMPARES;
#4) O programa termina com return(6).
#N.B. Depois de copiar o seu código para a janela de resposta, elimine as linhas em branco.

#pergunta1 teste
.data
array:   .word     13, 17, 13, 32, 29, 15, 2, 31, 0
	.align 2#alinhar para não dar problemas
	#array de 4 posições cada posição ocupa 9 ou seja 9x9=81
	.space 81
resultado: .asciiz "Numero de elementos do array: "

.text
move $t0,$zero#indice do array
move $t1,$zero #valor a ser colocado no array 
li $t2,81 #tamanho max 


loop:
beq $t0,$t2,sai_do_loop #sai do loop quando é igual a $t2

sw  $t1,array($t0)#store word do $t1 do array na posição $t0
addi $t0,$t0,4#indice do array 4 em 4
addi $t1,$t1,1#valor a ser colocado no array em uma unidade
j loop

PARIMPAR:
#contador
li $t1,2
div $t0,$t1
mfhi $t2
beq $t2,$zero,return6
li $v0,4
la $a0,impar
syscall
li $v0,10
syscall
addi $t1,$t1,1    #contador++
resto: addi $t2,$t2,1  #apontador++
j PARIMPAR

impar:
addi $t1,$t1,1    #contador++
resto: addi $t2,$t2,1  #apontador++

sai_do_loop: 
move $t0,$zero#indice do array
imprime:
beq $t0,$t2,sai_de_imprime #sai do loop quando é igual a 16
li $v0,1

lw  $a0,array($t0)#load word do $a0 do array na posição $t0
syscall

#atualizar indice 
addi $t0,$t0,4#indice do array 4 em 4
j imprime

sai_de_imprime:
li $v0,10
syscall

fim:
li $v0,4
la $a0,resultado
syscall
li $v0,1
move $a0,$t1
syscall


return6: li $v0,10
	syscall
