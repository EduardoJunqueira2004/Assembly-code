.data
perg: .asciiz"Introduza um número: "
maior: .asciiz"O número é maior que zero "
menor: .asciiz"O número é menor que zero "
igual: .asciiz"O número é igual a zero "

.text
li $v0,4
la $a0,perg
syscall

li $v0,5
syscall
move $t0,$v0



beq $t0,$zero,imprimeigual
bgt $t0,$zero,imprimemaior
blt $t0,$zero,imprimemenor




imprimeigual: li $v0,4
		la $a0,igual
		syscall
		
li $v0,10 #encerra o progama
syscall

imprimemaior:li $v0,4
		la $a0,maior
		syscall
		
li $v0,10 #encerra o progama
syscall

imprimemenor:li $v0,4
		la $a0,menor
		syscall
		
li $v0,10 #encerra o progama
syscall	
	      