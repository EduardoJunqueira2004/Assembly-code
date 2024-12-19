.data
idade: .space 1
pergunta: .asciiz "Que idade tens?"
resposta: .asciiz "A tua idade é "
.text
main:
	li $v0,4
	la $a0,pergunta 
	syscall 

        li $v0,5
	syscall
        
        move $t0,$v0
        
	li $v0,4
	la $a0,resposta
	
	syscall
	
	move $a0,$t0
	li $v0,1
	syscall
 
