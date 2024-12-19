.data
cump: .asciiz "Olá\n" #cumprimento
perg: .asciiz "Em que ano nasceste?\n " 
resp: .asciiz "Idade:\n "

.text
li $v0,4   #print string
la $a0,cump
syscall 
la $a0,perg  #print integer
syscall
li $v0,5  #read integer
syscall
add  $t0,$zero,$v0
li $t1,2022
sub $t0,$t1,$t0
li $v0,4
la $a0,resp
syscall
li $v0,1
add $a0,$zero,$t0
syscall
