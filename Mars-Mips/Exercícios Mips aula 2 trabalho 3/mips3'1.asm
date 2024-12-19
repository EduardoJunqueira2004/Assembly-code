.data
ano: .space 1
comprimentar: .asciiz "Olá"
pergunta: .asciiz "Qual o teu ano de nascimento?"
resposta: .asciiz "A tua idade é "
.text
main: la $a0,pergunta # instrução virtual, decomposta pelo
 # assembler em 2 instruções nativas
add $v0,$zero,4 # $v0 = 4
syscall # print_str(str2);
 # fim do programa
