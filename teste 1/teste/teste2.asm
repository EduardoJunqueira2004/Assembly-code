.data
cumprimento: .asciiz"Olá,utilizador"
perg: .asciiz"Insira um  número inteiro maior que 10:  "
espaço: .byte' '
.text
li $v0,4
la $a0,perg
syscall
li $v0,5
syscall

 move $t0,$v0
 move $t1,$zero
 

 while:
 bgt $t1,$t0,exit #valor de $t1>$t0 acabar 4-1234etc... 
 
#imprimir $t1
	li $v0,1
	move $a0,$t1 #printa só os pares
	syscall
	
	
	li $v0,4
	la $a0,espaço
	syscall
	
	subi $t1,$t1,2#printar par
	j while
	
	li $v0,10
	syscall 
 
 exit:li $v0,10
    	syscall

 
