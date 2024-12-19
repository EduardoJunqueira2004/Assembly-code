.data
perg1: .asciiz"Insira uma variável tipo float:"
resp: .asciiz"A variável que inseriu é "
#representar o $zero para coroc 1
zero: .float 0.0

.text

#perg1
li $v0,4
la $a0,perg1
syscall

#valor lido estará em $f0
li $v0,6
syscall

#mover para o copoc1 o valor zero float:lwc1
lwc1 $f1,zero
#somar o valor dado com a constante 0.0 e far o  valor $f12 para o qual se quer imprimir
add.s $f12,$f0,$f1
 
#resp
li $v0,4
la $a0,resp
syscall

#imprimir o valor float
li $v0,2
syscall

#exit 
li $v0,10
syscall