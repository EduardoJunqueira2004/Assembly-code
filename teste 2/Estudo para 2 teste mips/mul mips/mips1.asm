.data
perg1: .asciiz"Porfavor insira um número: "
perg2: .asciiz"Porfavor insira outro número: "
resp: .asciiz"A multiplicação dos numeros que inseriu é igual a: "

.text
#perg1
li $v0,4
la $a0,perg1
syscall
li $v0,5
syscall
move $t1,$v0

#perg2
li $v0,4
la $a0,perg2
syscall
li $v0,5
syscall
move $t2,$v0

#operação multiplicação
mul $s0,$t1,$t2

#resp
li $v0,4
la $a0,resp
syscall
li $v0,1
move $a0,$s0
syscall

#exit 
li $v0,10
syscall



