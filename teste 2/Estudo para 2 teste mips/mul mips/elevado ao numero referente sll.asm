.data
perg1: .asciiz"Porfavor insira um número: "
resp: .asciiz"O numero elevado ao quadrado= "

.text
#perg1
li $v0,4
la $a0,perg1
syscall
li $v0,5
syscall
move $t1,$v0

#operação sll ^2
srl $s1,$t1,1

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

