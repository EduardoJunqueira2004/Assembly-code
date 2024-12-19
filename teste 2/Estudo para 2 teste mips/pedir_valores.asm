.data
perg1: .asciiz"Insira something?"
resp: .asciiz"O resultado = "

.text

#perg1
li $v0,4
la $a0,perg1
syscall
li $v0,5
syscall
move $t0,$v0

# operação


#resp
li $v0,4
la $a0,resp
syscall

#exit 
li $v0,10
syscall
