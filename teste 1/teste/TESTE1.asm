.data
Cumprimento:.asciiz"Olá,utilizador"
input1: .asciiz "Insira um número inteiro: "
input2: .asciiz "Insira outro  número inteiro diferente do primeiro: "
resultado: .asciiz "Resultado= "
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

#operação
add  $s2, $s0, $s0 #A+A
add  $s3,$s2,$s1 #A+A+B

li $v0, 4
la $a0, resultado
syscall

li $v0,1
move $a0, $s3
syscall