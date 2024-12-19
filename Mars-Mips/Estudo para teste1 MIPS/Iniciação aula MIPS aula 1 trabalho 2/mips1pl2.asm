.text
main: 
add $v0,$zero,3 # $t0=x
syscall 
add $a0,$zero,$t1 # copia o registo $t5 para o registo $a0
addi $v0,$zero,16 # a system call print_int10() é identificada
# com o número 1 (ver tabela de instruções)
syscall # a system call print_int10() é chamada
add $t0,$zero,$v0
add $t2,$zero,8 # $t2=8
add $t1,$t0,$t0 # $t1=x+x=2x
add $t1,$t1,$t2 # $t1=y=2x+8
