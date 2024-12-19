.data
myarray:
    .align 2
    .space 32 #aloca 4 espaços no array
.text
move $t0,$zero#INDICE DO ARRAY valor que eu coloco
move $t1,$zero#VCALOR A SER COLOCADO NO ARRAY
li $t2,32 #tamanho do array

loop: beq $t0,$t2,Exit
	sw $t1,myarray($t0)
	addi $t0,$t0,4
	addi $t1,$t1,1
	j loop
	
Exit:
move $t0,$zero
imprime:
beq $t0,$t2,termina
li $v0,1
lw $a0,myarray($t0)
syscall

addi $t0,$t0,4
j imprime

termina:
li $v0,10
syscall
    