.data
input1: .asciiz "Primeiro número: "
input2: .asciiz "Segundo número: "
resultado: .asciiz "Resultado: "
.text
#leitura do primeiro número
li $v0, 4
la $a0, input1
syscall

li $v0, 5
syscall

move $s0, $v0
#leitura do segundo número
li $v0, 4
la $a0,input2
syscall

li $v0, 5
syscall

move $s1, $v0
#operação de multiplicação
mult  $s0, $s1 #para valores 32*32 bits-64bits no máximo

mflo $s2

li $v0, 4
la $a0, resultado
syscall

li $v0,1
move $a0, $s2
syscall
