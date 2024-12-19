.data 
perg1: .asciiz "Insira um numero inteiro: \n"
perg2: .asciiz "Insira outro numero inteiro: \n"
perg3: .asciiz"Insira outro numero inteiro: \n"
resp: .asciiz "A soma = "
.text
li $v0,4
la $a0,perg1
syscall
li $v0,5
move $s0,$v0
syscall
li $v0,4
la $a0,perg2
syscall
li $v0,5
move $s1,$v0
syscall
li $v0,4
la $a0,perg3
syscall
li $v0,5
move $s2,$v0
syscall     #correto

#operação
add $s3,$s0,$s1
add $s4,$s3,$s2 

li $v0,4
la $a0,resp
syscall

li $v0,1
move $a0,$s4
syscall
