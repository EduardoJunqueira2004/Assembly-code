.data
ler: .asciiz"Insira um número inteiro "

.text
li $v0,4
la $a0,ler
syscall
li $v0,5
syscall
move $t0,$v0

move $t1,$zero #i=0
 loop: bgt $t1,$t0,exit
 li $v0,1
 move $a0,$t1
 syscall
 addi $t1,$t1,1 #i=i+1
 
 j loop
 exit: