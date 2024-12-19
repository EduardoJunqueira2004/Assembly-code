.data
perg: .asciiz"Insira um número "
igual: .asciiz"O número que inseriu é igual a zero"
menor: .asciiz"O número que inseriu é menor que zero"
maior: .asciiz"O número que inseriu é maior de zero"
.text
li $v0,4
la $a0,perg
syscall
li $v0,5
syscall
move $t0,$v0
li $t1,0
beq $t0,$t1,igualazero
blt $t0,$t1,menorzero
bgt $t0,$t1,maiorzero

igualazero:li $v0,4
		la $a0,igual 
		syscall
li $v0,10
syscall
menorzero: li $v0,4
		la $a0,menor 
		syscall
li $v0,10
syscall
maiorzero:     li $v0,4
		la $a0,maior 
		syscall
li $v0,10
syscall
