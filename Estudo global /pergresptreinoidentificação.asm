.data
printTitle: .asciiz"Identificação do aluno"
perg1: .asciiz"Introduza o seu Nome Completo:"
const1: .space 1000
perg2: .asciiz"\nIntroduza a sua Universidade e Região da Mesma:"
const2: .space 1000
perg3: .asciiz"\nIntroduza o seu Curso:"
const3: .space 1000
perg4: .asciiz"\nIntroduza a sua Turma:"
const4: .space 1000
perg5: .asciiz"\nIntroduza o seu número de Estudante:"
const5: .space 1000
ficheiro: .asciiz"/Users/eduardojunqueira/Desktop/AESDC/Identificação.txt"
decisão: .asciiz"\nSe quiser guardar o resultado no arquivo por favor insira (Y), caso queira sair insira (N):"
erro_op: .asciiz"\nO perador desconhecido!"
.text
#perg:

	    la       $a0, perg1
            li       $v0, 4
            syscall
            
li $v0,8
la $a0,const1
la $a1,1000
syscall
            la       $a0, perg2
            li       $v0, 4
            syscall
li $v0,8
la $a0,const2
la $a1,1000
syscall
            
  
            la       $a0, perg3
            li       $v0, 4
            syscall
 
li $v0,8
la $a0,const3
la $a1,1000
syscall

            la       $a0, perg4
            li       $v0, 4
            syscall
            
            
            
            
li $v0,8
la $a0,const4
la $a1,1000
syscall

            la       $a0, perg5
            li       $v0, 4
            syscall
          
          
li $v0,8
la $a0,const5
la $a1,1000
syscall

decidir:
li $v0,4
la $a0,decisão
syscall
li $v0,12 #guardar caracteres
syscall
move $t0,$v0

lbu $t3,0($a0)          #apontador para o endereço
beq $t0,'Y',Sim
beq $t0,'N',Não
bne $t0,'Y',erro
bne $t0,'N',erro


erro:
li $v0,4
la $a0,erro_op
syscall
j decidir #para não ficar em loop infinito


Sim:
#guardar ficheiro
#cria ficheiro  #fopen()

li $v0, 13    
la $a0,ficheiro
li $a1,1   
li $a2,0 #leitura: A1=0, escrita:A1=1
syscall


#escreve o ficheiro #fwrite()
move $s0,$v0
li $v0,15     
move $a0,$s0
#mostrar o reusultado da operação:
la $a1,const1
#printfloat
li $a2,1000 #guardar a quantidade de caracteres pretendidos 
syscall

#escreve o ficheiro #fwrite()
move $s0,$v0
li $v0,15     
move $a0,$s0
#mostrar o reusultado da operação:
la $a1,const2
#printfloat
li $a2,1000 #guardar a quantidade de caracteres pretendidos 
syscall

#escreve o ficheiro #fwrite()
move $s0,$v0
li $v0,15     
move $a0,$s0
#mostrar o reusultado da operação:
la $a1,const3
#printfloat
li $a2,1000 #guardar a quantidade de caracteres pretendidos 
syscall

#escreve o ficheiro #fwrite()
move $s0,$v0
li $v0,15     
move $a0,$s0
#mostrar o reusultado da operação:
la $a1,const4
#printfloat
li $a2,1000 #guardar a quantidade de caracteres pretendidos 
syscall

#escreve o ficheiro #fwrite()
move $s0,$v0
li $v0,15     
move $a0,$s0
#mostrar o reusultado da operação:
la $a1,const5
#printfloat
li $a2,1000 #guardar a quantidade de caracteres pretendidos 
syscall


#fclose
li $v0,16
move $a0,$s0
syscall

#exit
li $v0,10
syscall

Não:
#exit
li $v0,10
syscall






