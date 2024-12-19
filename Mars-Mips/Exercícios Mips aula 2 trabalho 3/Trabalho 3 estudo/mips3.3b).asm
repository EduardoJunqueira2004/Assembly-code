.data
perg: .asciiz"Introduza um numero inteiro: \n"
perg2: .asciiz"Introduza outro numero inteiro: \n"
resp: .asciiz"A soma dos dois numeors inteiros= "
.text
li $v0,4
la $a0,perg
syscall

la $v0,5
syscall
move $s0,$v0

li $v0,4
la $a0,perg2
syscall

la $v0,5
syscall
move $s1,$v0

add $s2,$s0,$s1
li $v0,4
la $a0,resp
syscall
li $v0,1
move $a0,$s2
syscall 


