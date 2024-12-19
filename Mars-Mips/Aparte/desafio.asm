.data
perg: .asciiz"Insira o seu ano de nascimento"
resp: .asciiz"Tenho "
resp2: .asciiz" anos"
.text
li $v0,4
la $a0,perg
syscall
li $v0,5
syscall
move $t0,$v0
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
