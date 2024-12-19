.data
myarray:
    .align 2
    .space 32 #aloca 4 espaços no array
.text
move $t0,$zero#INDICE DO ARRAY valor que eu coloco
move $t1,$zero#VCALOR A SER COLOCADO NO ARRAY
li $t2,32 #tamanho do array pode ser 16 ou 32

loop: beq $t0,$t2,Exit #operação
	sw $t1,myarray($t0)
	addi $t0,$t0,4
	addi $t1,$t1,1
	j loop   #sempre necessário no final de um loop para volta a fazer atéexit
	
Exit:
move $t0,$zero
imprime:           #para imprimir
beq $t0,$t2,termina
li $v0,1
lw $a0,myarray($t0)
syscall

addi $t0,$t0,4
j imprime #sempre necessário no final de imprime para voltar a imprimir

termina:
li $v0,10
syscall
    