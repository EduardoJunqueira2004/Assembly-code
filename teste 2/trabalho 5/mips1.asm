.data
str: .asciiz ""
.text
main: la $a0,str
	jal  strlen
	move  $a0,$v0
	li $v0,1
	syscall
	li $v0,10
	syscall


                              
strlen: li $v0,0  #contador "len"         #
while:lbu $t0,0($a0) #$a0=*s		#    
	beqz $t0,exit			# 
	addi $v0,$v0,1			#   contador empre que necessitar por este passo 
	addi $a0,$a0,1			#
	j  while			#


exit:jr $ra				#
