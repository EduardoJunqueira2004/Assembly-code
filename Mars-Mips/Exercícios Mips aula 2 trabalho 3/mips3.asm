.data
idade: .space 1
pergunta: .asciiz "Que idade tens?"
resposta: .asciiz "A tua idade é "
.text
main:  la $a0,pergunta # instrução virtual, decomposta pelo
                       # assembler em 2 instruções nativa
        add $v0,$zero,4 # $v0 = 4
li $v0,4 
la $a0,idade
syscall # print_str(str2);
 # fim do programa