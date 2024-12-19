.data
perg: .asciiz"Introduza um número inteiro: "
resp: .asciiz"Valor em binário: "
bin1: .asciiz"0"
bin2: .asciiz"1"
.text
li $v0,4
la $a0,perg  #printf
syscall

li $v0,5
syscall     #scanf
move $t0,$v0  #garda o valor introduzido no t0

li $t1,32   #guarda 32 no registo $t1
li $t2,0x80000000 #guarda 0x80000000 no registot2

loop:
	and $t3,$t2,$t1
	beq $t3,$zero,else
		li $v0,4
		la $a0,bin2
		syscall
		j exit
	else:
		li $v0,4
		la $a0,bin1
		syscall	
exit:
     sll $t1,$t1,1
     subi $t0,$t0,1
     bne $t0,$zero,loop       
        


