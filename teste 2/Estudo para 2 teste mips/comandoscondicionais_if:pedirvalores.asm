#comandos condicionais pedir valores e fazer condições:
.data
perg1: .asciiz"Insira um numero e será retornado se ele é par ou ímpar:"
par: .asciiz"O número que inseriu é par"
impar: .asciiz"O número que inseriu é impar"

.text

#perg1
li $v0,4
la $a0,perg1
syscall
li $v0,5
syscall
move $t0,$v0

#adicionar o valor 2
li $t1,2

#operação da divisão
div $t2,$t0,$t1

#mfhi possui o reto da divisão
mfhi $t2

# operação par resto da divisão for 0 o número será par
beqz  $t2,imprimepar 

imprimeimpar:
#impar
li $v0,4
la $a0,impar
syscall

#exit 
li $v0,10
syscall

imprimepar:
li $v0,4
la $a0,par
syscall


