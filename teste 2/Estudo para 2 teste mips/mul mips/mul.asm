#multiplicação 
.data
perg1: .asciiz"Porfavor insira um número: "
perg2: .asciiz"Porfavor insira outro número: "
resp: .asciiz"A multiplicação dos numeros que inseriu="
espaço1: .asciiz "\n"
bitmaissignificativo: .asciiz"O bit menos significativo correspondente a $t3="
espaço2: .asciiz "\n"
bitmenossignificativo: .asciiz"O bit menos significativo correspondente a $t3="


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

#bits mais significativos
mfhi $t3

#bits menos significativos
mflo $t4


#resp
li $v0,4
la $a0,resp
syscall
li $v0,1
move $a0,$s0
syscall

#espaço1
li $v0,4
la $a0,espaço1
syscall

#bitmaissignificativo
li $v0,4
la $a0,bitmaissignificativo
syscall
li $v0,1
move $a0,$t3
syscall

#espaço2
li $v0,4
la $a0,espaço2
syscall

#bitmenossignificativo
li $v0,4
la $a0,bitmenossignificativo
syscall
li $v0,1
move $a0,$t4
syscall


#exit 
li $v0,10
syscall



