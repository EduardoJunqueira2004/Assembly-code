.data
msg: .asciiz "introduza um numero inteiro: "
zero: .asciiz "0"
um: .asciiz "1"


.text
li $v0,4
la $a0, msg
syscall
li $v0,5
syscall

move $t0,$v0
li $t0,32
li $t2,0x80000000


loop:
and $t3,$t2,$t1
beq $t3,$zero,else
li $v0,4
la $a0,um
syscall


else:
li $v0,4
la $a0,zero
syscall
j loop

exit:
subi $t0,$t0,1
beq $t0,$zero,termina
sll $t1,$t1,1



termina:

