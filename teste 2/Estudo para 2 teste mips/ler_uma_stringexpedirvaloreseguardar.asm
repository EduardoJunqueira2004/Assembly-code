#defenir uma string
.data
perg1: .asciiz"Qual é o seu nome?"
resp: .asciiz"Olá  "
perg2: .asciiz"Qual é a sua idade?"
resp2: .asciiz"Ok tens"
#variável para guardar o nome/idade/o que necessitar 
nome: .space 50
idade: .space 4

.text

#perg1
li $v0,4
la $a0,perg1
syscall

#leitura do nome
li $v0,8
la $a0,nome
#atenção $a1 para guardar espaço de 50 caracteres
la $a1,50
syscall

#resp
li $v0,4
la $a0,resp
syscall

#imprimir variável nome
li $v0,4
la $a0,nome
syscall

#perg2
li $v0,4
la $a0,perg2
syscall

#leitura da idade
li $v0,8
la $a0,idade
#atenção $a1 para guardar espaço de 4 caracteres
la $a1,4
syscall

#resp2
li $v0,4
la $a0,resp2
syscall


#imprimir variável idade
li $v0,4
la $a0,idade
syscall

#exit 
li $v0,10
syscall