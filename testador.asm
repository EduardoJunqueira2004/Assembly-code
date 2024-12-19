 #fazer area triângulo em float e guardar o valçor no arquivo
.data
pergB: .asciiz"\nIntroduza a base do triângulo em número real:"
pergA: .asciiz"\nIntroduza a altura do triângulo em números real:"
constB: .float 0.0
constA: .float 0.0
mostraArea: .asciiz"A area do triângulo="
mostraemete: .asciiz"\n(insira o resultado a seguir para guardar no arquivo)A área do triângulo="
constante2: .float 2.0
decisão: .asciiz"\nSe quiser guardar o resultado no arquivo por favor insira (S), caso queira sair insira (N):"
ficheiro: .asciiz"/Users/eduardojunqueira/Desktop/AESDC/RESULTADO.TXT"
erro_op: .asciiz"\nO perador desconhecido!"
constprintfloat: .space 100
.text
#printarea:
li $v0,4
la $a0,pergB
syscall
#guarda base
li $v0 6
syscall

#passar int para float
lwc1 $f1,constB
add.s $f3,$f1,$f0 #f0=0 #f1=constb depois de estar no f3 já o float introduzido
#base guardada em $f3

#pergaltura:
li $v0,4
la $a0,pergA
syscall
#guarda altura
li $v0 6
syscall

#passar int para float
lwc1 $f2,constA
add.s $f4,$f2,$f0 #f0=0 #f2=constb depois de estar no f4 já o float introduzido
#altura guardada em $f4

#guardar um float 
l.s $f6,constante2

CALC:
#BxA
mul.s $f5,$f3,$f4
div.s $f0,$f5,$f6
#operação está em $f0

#printmostraArea
li $v0,4
la $a0,mostraArea
syscall

#printfloat
mov.s $f12,$f0 #move $f0 pra $f12
li $v0,2 #mostra em $f12 
syscall


li $v0,4
la $a0,mostraemete
syscall
#guarda em constprintfloat
li $v0,8
la $a0,constprintfloat
la $a1,100
syscall


decidir:
li $v0,4
la $a0,decisão
syscall
li $v0,12 #guardar caracteres
syscall
move $t0,$v0

lbu $t3,0($a0)          #apontador para o endereço
beq $t0,'S',Sim
beq $t0,'N',Não
bne $t0,'S',erro
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
la $a1,constprintfloat
#printfloat
li $a2,100 #guardar a quantidade de caracteres pretendidos 
syscall



#fclose
li $v0,16
move $a0,$s0
syscall

return1:
li $v0,10
syscall

Não:
#exit
li $v0,10
syscall