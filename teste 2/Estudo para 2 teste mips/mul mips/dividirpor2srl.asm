.data
perg: .asciiz"Insira um número>=0: "
resp: .asciiz"A metade desse número é dada por: "

.text
#perg
li $v0,4
la $a0,perg
syscall
li $v0,5
syscall
move $t1,$v0

#operação shift right logical /2
srl $s1,$t1,1

#resp
li $v0,4
la $a0,resp
syscall
li $v0,1
move $a0,$s1
syscall

#exit 
li $v0,10
syscall
