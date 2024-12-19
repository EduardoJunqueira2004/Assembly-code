.data
perg: .asciiz"Insira a sua data de nascimento: \n"
resp: .asciiz"Tenho "
resp2: .asciiz" anos nice I'm free Oh Yeah let's go baby"
.text
li $v0,4
la $a0,perg
syscall
li $v0,5
syscall
move $t0,$v0


#operação
li $t1,2022
sub $t2,$t1,$t0

li $v0,4
la $a0,resp
syscall
move $a0,$t2
li $v0,1
syscall

li $v0,4
la $a0,resp2
syscall



