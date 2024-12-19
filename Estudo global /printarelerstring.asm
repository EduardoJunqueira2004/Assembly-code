#faça um código que peça o seu nome idade e curso de uni.
#Depois para continuar faça uma opção de escolha :Y (sim) para  mostrar notas N(não) para sair
#meter string e printar
#criar uma variável que guarda os caraceteres daessa string
.data
pergnome: .asciiz"Insira o seu nome:"
pergidade: .asciiz"Insira a sua idade:"
pergcurso: .asciiz"Insira o seu curso:"
respnome: .asciiz"\nO seu nome é:"
respidade: .asciiz"A sua idade é:"
respcurso: .asciiz"\nO seu curso é:"
variávelnome: .space 25
variávelcurso: .space 50
decisão: .asciiz"\nPretende mostrar as suas notas finais  sim'Y',não'N':"
erro_op: .asciiz"\nO perador desconhecido!"
pergdecisãonotas: .asciiz"\nInsira todas as notas finais que obteve no 1 semestre\n"
n1: .asciiz "nota1:"
n2: .asciiz "nota2:"
n3: .asciiz "nota3:"
n4: .asciiz "nota4:"
respmedia: .asciiz" A sua média das notas finais do 1 semestre="

.text
#printar pergnome:
li $v0,4
la $a0,pergnome
syscall
#guardar string
li $v0,8
la $a0,variávelnome
la $a1,25
syscall



#printar idade:
li $v0,4
la $a0,pergidade
syscall
#guardar intidade
li $v0,5
syscall
move $t1,$v0




#printar pergcurso:
li $v0,4
la $a0,pergcurso
syscall
#guardar string
li $v0,8
la $a0,variávelcurso
la $a1,50
syscall


#print_:decisão
li $v0,4
la $a0,decisão
syscall
li $v0,12
syscall
move $t0,$v0

lbu $t3,0($a0)          #apontador para o endereço
beq $t0,'Y',Sim
beq $t0,'N',Não

li $v0,4
la $a0,erro_op
syscall



li $v0,10 #return 0;
syscall
j all 

all:
#printar a resp
li $v0,4
la $a0,respnome
syscall
#printar a stringnome
li $v0,4
la $a0,variávelnome
syscall

#printar a resp
li $v0,4
la $a0,respidade
syscall
move $a0,$t1
#printar a intidade
li $v0,1
syscall

#printar a resp
li $v0,4
la $a0,respcurso
syscall
#printar a stringcurso
li $v0,4
la $a0,variávelcurso
syscall


Sim:
#printar pergnome:
li $v0,4
la $a0,pergdecisãonotas
syscall

#printar n1:
li $v0,4
la $a0,n1
syscall
li $v0,5
syscall
move $s1,$v0

#printar n2:
li $v0,4
la $a0,n2
syscall
li $v0,5
syscall
move $s2,$v0

#printar n3:
li $v0,4
la $a0,n3
syscall
li $v0,5
syscall
move $s3,$v0

#printar n4:
li $v0,4
la $a0,n4
syscall
li $v0,5
syscall
move $s4,$v0

#calc
add $t4 $s1,$s2
add $t5,$s3,$s4
add $t6,$t4,$t5
div $t2,$t6,4

#printar respmedia:
li $v0,4
la $a0,respmedia
syscall
move $a0,$t2
#print media
li $v0,1
syscall

Não:
#exit:
li $v0,10
syscall
