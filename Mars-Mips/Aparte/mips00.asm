.data
perg: .asciiz"Insira um número inteiro: \n"
resp1: .asciiz"Número maior que zero "
resp2: .asciiz"Número menor que zero"
resp3: .asciiz"Número igual a zero"

.text
li $v0,4
la $a0,perg
syscall
li $v0,5
syscall
move $t0,$v0
li $t1,0

loop:
bgt $t0,$t1,Maiorzero
blt $t0,$t1,Menorzero
beq $t0,$t1,Igualazero

Maiorzero: li $v0,4
	la $a0,resp1
	syscall
	move $a0,$t0
	li $v0,10
	syscall
	
Menorzero: li $v0,4
	la $a0,resp2
	syscall
	move $a0,$t0
	li $v0,10
	syscall
	
Igualazero: li $v0,4
	la $a0,resp3
	syscall
	move $a0,$t0
	li $v0,10
	syscall
	

