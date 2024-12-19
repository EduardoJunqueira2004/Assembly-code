#multiplicação por potências de 2:swift left mover todos os bits uma casa pa a esquerda multipliocar por 2
.data
perg1: .asciiz"Insira um número:"
perg2: .asciiz"Insira outro número:"
resp: .asciiz"O resultado = "

.text

#perg1
li $v0,4
la $a0,perg1
syscall
li $v0,5
syscall
move $t0,$v0



# operação multiplicação por potência de base 2
sll $s1,$t0,10#multiplicar por 2^10


#resp
li $v0,4
la $a0,resp
syscall
move $a0,$s1
li $v0,1
syscall

#exit 
li $v0,10
syscall

