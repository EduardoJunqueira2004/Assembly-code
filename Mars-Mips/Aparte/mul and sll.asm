.text
li $t0,2
addi $t1,$zero,10

sll $s1,$t1,10 # 2^10

mul $t2,$t1,$t0
li $v0,1
syscall
move $v0,$t2