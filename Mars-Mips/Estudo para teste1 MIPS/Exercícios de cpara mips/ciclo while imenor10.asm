.text
move $t0,$zero
while:
beq $t0,10,Exit
addi $t0,$t0,1
j while
Exit:
li $v0,1
move $a0,$t0
syscall
 
