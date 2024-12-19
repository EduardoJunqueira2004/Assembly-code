.data
base:    .float 0.0
altura:  .float 0.0
resultado: .float 0.0
pergunta: .asciiz "Deseja guardar o resultado num ficheiro (S/N)? "
sim:     .asciiz "S"
nome_ficheiro: .asciiz "AESDC/RESULTADO.TXT"

    .text
    .globl main

main:
    # Pedir ao utilizador os valores da base e altura
    li $v0, 6
    syscall
    mov.s $f12, $f0
    li $v0, 6
    syscall
    mov.s $f14, $f0

    # Chama a função CALC para calcular a área do triângulo
    jal CALC

    # Apresenta o resultado do cálculo ao utilizador
    li $v0, 2
    mov.s $f12, $f16
    syscall

    # Pergunta ao utilizador se deseja guardar o resultado num ficheiro
    li $v0, 4
    la $a0, pergunta
    syscall

    # Lê a resposta do utilizador
    li $v0, 12
    syscall

    # Verifica se a resposta é "S"
    beq $v0, 83, guardar
    j final

guardar:
    # Abrir o ficheiro para escrita
    li $v0, 13
    la $a0, nome_ficheiro
    li $a1, 2
    syscall

    # Escreve o resultado no ficheiro
    li $v0, 15
    li $a0, 'R'
    syscall
    li $v0, 15
    li $a0, 'e'
    syscall
    li $v0, 15
    li $a0, 's'
    syscall
    li $v0, 15
    li $a0, 'u'
    syscall
    li $v0, 15
    li $a0, 'l'
    syscall
    li $v0, 15
    li $a0, 't'
    syscall
    li $v0, 15
    li $a0, 'a'
    syscall
    li $v0, 15
    li $a0, 'd'
    syscall
    li $v0, 15
    li $a0, 'o'
    syscall
    li $v0, 15
    li $a0, ':'
    syscall
    li $v0, 15
    mov.s $f12, $f16
    syscall
    li $v0, 15
    li $a0, '\n'
    syscall

    # Fecha o ficheiro
    li $v0, 16
    syscall

    # Termina o programa com return(1)