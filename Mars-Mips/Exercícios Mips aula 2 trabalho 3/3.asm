.data
var1: .byte 5
var2: .word 3
str1: .asciiz "abc"
str2: .asciiz "xyz"
 .text
main:
lb $a0,var1
li $v0,1
syscall
lw $a0,var2
li $v0,1
syscall
li $v0,4
la $a0,str1
syscall
li $v0,4
la $a0,str2
syscall
