.data
perg: .asciiz"Introduza um número inteiro: "
zero: .asciiz"0"
um: .asciiz"1"
valorembinario: .asciiz"Valor em binário: "

.text
li $v0,4
la $a0,perg
syscall
li $v0,5
syscall
move $t0,$v0

li $t1,0x80000000
li $t2,32
li $t5,0



loop: 
      and $t3,$t1,$t0
      beq $t0,$t5,else
      add $t0,$t0,1
      li $v0,4
      la $a0,zero
      syscall
      j loop
      
else:     
         li $v0,4
	 la $a0,um
	 syscall
exit:     
          subi $t0,$t0,1
          beq $t0,$zero,termina
          sll $t1,$t1,1
          li $v0,4
          la $a0,valorembinario
          syscall
          li $v0,1
          syscall
          
        
          j termina

termina:
li $v0,10
syscall

	 
 