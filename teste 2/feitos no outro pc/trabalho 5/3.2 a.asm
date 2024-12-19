.data
str: .asciiz "2001 Odisseia no Espaço"
.text
main:  la $a0,str
	jal  atoi
	move  $a0,$v0
	li $v0,1
	syscall
	li $a0,0
	li $v0,17 #return 0
	syscall

    atoi:        addi $sp,$sp,-4        #guarda os dados para usar os registos
            sw $s0,0($sp)
            addi $sp,$sp,-4
            sw $s1,0($sp)                 #stack calle e caller
            addi $sp,$sp,-4
            sw $s2,0($sp)
            li $s2,0        #ate aqui
    while: lbu $s0,0($a0)
            bge $s0,48,continua
            j termina
    continua:    ble $s0,57,continua2
            j termina
    continua2:    subi $a0,$s0,48
            addi $a0,$a0,1
            li $t0,10
            mul $s2,$s2,$t0
            add $s2,$s2,$s1
            j while
    termina:    move $v0,$s2
            lw $s2,0($sp)        # restoura os dados guardados inicialmente
            addi $sp,$s1,+4
            lw $s1,0($sp)
            addi $sp,$s1,+4
            lw $s0,0($sp)        #ate aqui
            jr $ra
