.data
pergunta: .asciiz "que idade tens?"
idade: .byte 25
resposta:.asciiz "A tua idade é "
.text
main:
     add $v0,$zero,4 
     la $a0,pergunta 
     syscall
     li $v0,4
     syscall
     sd $v0,idade
     li $v0,4
     la $a0,resposta
     syscall
     li $v0,36
     ld $a0,idade
     syscall
     
