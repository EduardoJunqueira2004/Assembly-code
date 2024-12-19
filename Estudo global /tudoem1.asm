#Progama com tudo o que tu necessitas.
#Xadrezzzz#soulind#aiohfilho#Leiria_é_vida
.data
cump: .asciiz"________________________Boas,bro então como vai a vida__________________________"
escolha: .asciiz"\nSe vai bem digite 'Y'.Se vai mal digite 'N'"
escolhay: .asciiz "\nOk,bro agora pergunta de matemática mais dificil da tua vida"
escolhan: .asciiz"\nSorry bro,joga xadrez e vê se melhora"
erro_op: .asciiz"O perador desconhecido !"
larg: .asciiz "\nPorfavor introduza a base do retângulo em numero real(números com pontos '.'):"
alt: .asciiz "\nPorfavor introduza a altura do retângulo em numero real(números com pontos '.'):"
const1: .float 0.0
const2: .float 0.0
perg:.asciiz"\nQuer fazer mais alguma coisa? 'Y' para sim 'N' para não "
Area: .asciiz"\nA area do retângulo="
pede_val_1:  .asciiz"\nIntroduza um valor inteiro: "
pede_val_2:  .asciiz"\nIntroduza outro valor inteiro: "
pede_tipo_op:  .asciiz"\nIntroduza o tipo de operação(x,/,%,+,-): "
erro_op1: .asciiz"\nO perador desconhecido !"
msg: .asciiz"\nResultado da sua operação pessoa de Leiria= "
msgfinal: .asciiz"#Xadrezzzz______#sou_lind__________#aiohfilho_________#Leiria_é_vida"
operador: .space 2

.text
#cumprimentar

li $v0,4
la $a0,cump
syscall

#print_decisão
li $v0,4
la $a0,escolha
syscall
li $v0,12
syscall
move $t0,$v0

lbu $t3,0($a0)          #apontador para o endereço
beq $t0,'Y',s
beq $t0,'N',n

li $v0,4
la $a0,erro_op
syscall

s:
li $v0,4
la $a0,escolhay
syscall
j perguntas

n:
li $v0,4
la $a0,escolhan
syscall

#sair
li $v0,10
syscall


perguntas:
#pedelargura:
li $v0,4
la $a0,larg
syscall
#guarda largura
li $v0 6
syscall
#passar int para float
lwc1 $f1,const1
add.s $f3,$f1,$f0


#pedealtura:
li $v0,4
la $a0,alt
syscall
#guarda altura
li $v0 6
syscall
#passar int para float
lwc1 $f2,const2
add.s $f4,$f2,$f0
jal calc


print_area:
li $v0,4
la $a0,Area
syscall
mov.s $f12,$f0
li $v0,2
syscall

#print_:perg
li $v0,4
la $a0,perg
syscall
li $v0,12
syscall
move $t0,$v0

lbu $t3,0($a0)          #apontador para o endereço
beq $t0,'Y',Sim
beq $t0,'N',Não

li $v0,4
la $a0,erro_op1
syscall



li $v0,10 #return 0;
syscall

calc: 
mul.s $f0,$f3,$f4
jr $ra



Sim:
li $v0,4
la $a0,pede_val_1
syscall
li $v0,5
syscall
move $t0,$v0

li $v0,4
la $a0,pede_val_2
syscall
li $v0,5
syscall
move $t1,$v0

li $v0,4
la $a0,pede_tipo_op
syscall
li $v0,8
la $a0,operador
li $a1,2
syscall
#operação:


lbu $t3,0($a0)          #apontador para o endereço
beq $t3,'x',multiplica 
beq $t3,'/',divide
beq $t3,'%',resto
beq $t3,'+',soma
beq $t3,'-',diferença


li $v0,4
la $a0,erro_op
syscall

#exit
#return 1
li $v0,17    
li $a0,1    
syscall
multiplica: 
mul $t2,$t0,$t1
j fim

divide:
div $t2,$t0,$t1           #opcional mas mais trabalhoso: divide: move $a0,$t0
			#move $a1,$t1
j fim				# jal divide
                               #move $t2,$v0
resto: 
rem $t2,$t0,$t1
j fim

soma:
add $t2,$t0,$t1
j fim

diferença:
sub $t2,$t0,$t1
j fim

fim:
li $v0,4
la $a0,msg 
syscall
move $a0,$t2

li $v0,1       #resulatdo
syscall
li $v0,4
la $a0,msgfinal 
syscall

li $v0,17
li $a0,0      #return 0
syscall

Não:
li $v0,10
syscall

