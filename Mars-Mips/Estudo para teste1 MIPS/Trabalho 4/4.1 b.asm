.data
msg: .asciiz "introduza um numero inteiro: "
zero: .asciiz "0"
um: .asciiz "1"
espaco: .asciiz" "

.text
li $v0,4
la $a0, msg
syscall
li $v0,5
syscall
add $t1,$zero,$v0
li $t0,32
li $t2,0x80000000
li $t4,4
loop:
and $t3,$t2,$t1
beq $t3,$zero,else
li $v0,4
la $a0,um
syscall

cont2: sll $t1,$t1,1
	addi $t0,$t0,1
	bne $t3,$zero,loop
	j cont2
else:
li $v0,4
la $a0,zero
syscall
exit:
subi $t0,$t0,1
beq $t0,$zero,termina
sll $t1,$t1,1
j loop
j termina

cont:
sub $t4,$t4,1
bne $t4,$zero,cont2
li $v0,4
la $a0,espaco
termina:
li $v0,10
syscall
