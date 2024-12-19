.data
cump: .asciiz "Olá,utilizador\n"
perg1: .asciiz "Insira um número real:"
perg2: .asciiz "Insira outro número real:"
operação: .asciiz"Escolha uma destas seguintes operações:(+,-,/,x):"
erro_op: .asciiz"\nO perador desconhecido!"
resultado: .asciiz"\nO resultado="

.text
#cump:
li $v0,4
la $a0,cump
syscall

#perg1:
li $v0,4
la $a0,perg1
syscall
li $v0,5
syscall
move $s1,$v0

#perg2:
li $v0,4
la $a0,perg2
syscall
li $v0,5
syscall
move $s2,$v0

#operação:
li $v0,4
la $a0,operação
syscall
li $v0,12
syscall
move $t0,$v0

lbu $t3,0($a0)          #apontador para o endereço
beq $t0,'+',soma
beq $t0,'-',subetração
beq $t0,'x',multiplicação
beq $t0,'/',divisão

li $v0,4
la $a0,erro_op
syscall

li $v0,10
syscall

soma:
add $t1,$s1,$s2
j fim

subetração:
sub  $t1,$s1,$s2
j fim

multiplicação:
mul $t1,$s1,$s2
j fim

divisão:
div $t1,$s1,$s2
j fim

fim:
li $v0,4
la $a0,resultado
syscall
move $a0,$t1

li $v0,1
syscall

li $v0,17
li $a0,0      #return 0
syscall






