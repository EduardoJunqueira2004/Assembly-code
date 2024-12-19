.data
cump: .asciiz"Olá,utilizador\n"
perg: .asciiz"Indique o ano do seu nascimento: \n"
resp: .asciiz "A sua idade é: "
.text
li $v0,4
la $a0,cump
syscall 

li $v0,4
la $a0,perg
syscall
li $v0,5
syscall
li $t3,2022
move $t0,$v0
sub $t1,$t3,$t0
li $v0,4
la $a0,resp
syscall
li $v0,1
move $a0,$t1
syscall

 
 
 




