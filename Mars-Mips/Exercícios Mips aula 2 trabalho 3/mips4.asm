.data
perg: .asciiz "idade?\n"
resp: .asciiz "tens "
resp2: .asciiz " anos"
idade: .byte 25
.text
li $v0,4
la $a0,perg
syscall
li $v0,4
la $a0,resp
syscall
li $v0,1
la $a0,idade
syscall
li $v0,4
la $a0,resp2
syscall
