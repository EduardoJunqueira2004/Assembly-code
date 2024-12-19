.data
str: .asciiz "     "
.text
main: la $a0,str
	jal  strlen
	move  $a0,$v0
	li $v0,1
	syscall
	li $a0,0
	li $v0,17 #return 0
	syscall

jal strlen
strlen: li $v0,0  #contador da 
while:lbu $t0,0($a0) #$a0=*s
	beqz $t0,exit
	addi $v0,$v0,1
	addi $a0,$a0,1
	j  while


exit:jr $ra