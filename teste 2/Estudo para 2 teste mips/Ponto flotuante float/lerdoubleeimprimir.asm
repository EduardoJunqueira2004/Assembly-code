#double usado para 64 bits número max de 15 bits
.data
perg1: .asciiz"Insira uma variável tipo double:"
resp: .asciiz"A variável que inseriu é "
#representar o $zero para coroc 1
zero: .double 0.0

.text

#perg1
li $v0,4
la $a0,perg1
syscall

#valor lido estará em $f0
li $v0,7
syscall

#mover para o copoc1 o valor zero atenção que double só trabalha com $fpares double:ldc1
ldc1 $f2,zero
#somar o valor dado com a constante 0.0 e far o  valor $f12 para o qual se quer imprimir
add.d $f12,$f0,$f2
 
#resp
li $v0,4
la $a0,resp
syscall

#imprimir o valor float
li $v0,3
syscall

#exit 
li $v0,10
syscall