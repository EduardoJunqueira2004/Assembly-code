.data
input1: .asciiz "Primeiro número: "
input2: .asciiz "Segundo número: "
resultado: .asciiz "Resultado: "
resto: .asciiz "Resto: "
quociente: .asciiz "Quociente: "
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
#operação divisão
div   $s0, $s1 #HI =Resto, LO=Quociente

mflo $s2 #quociente
mfhi $s3 #resto
#print quociente
li $v0, 4
la $a0, quociente 
syscall

li $v0,1
move $a0, $s2
syscall

#print resto
li $v0, 4
la $a0, resto 
syscall

li $v0,1
move $a0, $s3
syscall
