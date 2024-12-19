.data
cumprimento: .asciiz"Olá,utilizador"
perg: .asciiz"Insira um  número inteiro maior que 10:  "
impar: .asciiz"O número que inseriu é impar "
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
 
 li $v0,1
 move $a0,$t1
 syscall
 li $v0,4
 la $a0,espaço
 syscall
 
 addi $t1,$t1,1
 j while
 
 exit:
 
 
