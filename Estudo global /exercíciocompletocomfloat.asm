.data
cump: .asciiz "Olá,utilizador\n"
perg1: .asciiz "Insira um número real:"
perg2: .asciiz "Insira outro número real:"
operação: .asciiz"Escolha uma destas seguintes operações:(+,-,/,x):"
erro_op: .asciiz"\nO perador desconhecido!"
resultado: .asciiz"\nO resultado="
const1: .float 0.0
const2: .float 0.0

.text
#cump:
li $v0,4
la $a0,cump
syscall

#perg1:
li $v0,4
la $a0,perg1
syscall
li $v0,6
syscall

#passar int para float
lwc1 $f1,const1
add.s $f3,$f1,$f0

#perg2:
li $v0,4
la $a0,perg2
syscall
li $v0,6
syscall
lwc1 $f2,const2
add.s $f4,$f2,$f0

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
add.s  $f0,$f3,$f4
j fim

subetração:
sub.s  $f0,$f3,$f4
j fim

multiplicação:
mul.s $f0,$f3,$f4
j fim

divisão:
div.s $f0,$f3,$f4
j fim

fim:
li $v0,4
la $a0,resultado
syscall
mov.s $f12,$f0
li $v0,2
syscall

li $v0,17
li $a0,0      #return 0
syscall