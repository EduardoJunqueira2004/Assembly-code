.data
anos: .space 1
perg: .asciiz"Qual  a tua idade? \n"
resp: .asciiz "tenho "
.text
li $v0,4
la $a0,perg
syscall
li $v0, 5
syscall
move $t1,$v0

li $v0,4
la $a0,resp
syscall
move $a0,$t1
li $v0,1
syscall


