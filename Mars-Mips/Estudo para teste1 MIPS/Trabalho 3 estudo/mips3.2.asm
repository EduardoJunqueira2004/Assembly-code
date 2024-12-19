.data
var1: .byte 5
var2: .word 3
idade: .space 1
perg: .asciiz " Quantos anos tens? \n"
resp: .asciiz"tenho "
resp2: .asciiz " anos\n"
num:  .space 2
str1: .asciiz "digite um número inteiro \n"
str2: .asciiz "digite outro número inteito \n"
resp5: .asciiz "a soma dos dois números = "
.text
main:
#var1,var2
lb $a0,var1
li $v0,1
syscall
lw $a0,var2
li $v0,1
syscall
#idade
li $v0,4
la $a0,perg
syscall

li $v0,5
syscall
move $t0,$v0

li $v0,4
la $a0,resp
syscall
move $a0,$t0
li $v0,1
syscall
li $v0,4
la $a0,resp2
syscall
#operação soma 
li $v0,4
la $a0,str1
syscall
li $v0,5
syscall
move $t1,$v0
li $v0,4
la $a0,str2
syscall
li $v0,5
syscall
move $t2,$v0
li $v0,4
la $a0,resp5
syscall
add $t3,$t1,$t2
move $a0,$t3
li $v0,1
syscall














