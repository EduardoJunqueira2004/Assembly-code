.data
idade: .space 1
perg: .asciiz"idade?\n"
resp1: .asciiz"tens "
resp2: .asciiz" anos\n"

.text
li $v0,4
la $a0,perg
syscall
li $v0,5
syscall
move $t0,$v0

li $v0,4
la $a0,resp1
syscall
move $a0,$t0
li $v0,1
syscall

li $v0,4
la $a0,resp2
syscall



