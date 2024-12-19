#area_retângulo largxalt mais simples com numero float
.data
cump: .asciiz "Olá,utilizador"
larg: .asciiz "\nPorfavor introduza a largura do retângulo:"
alt: .asciiz "\nPorfavor introduza a altura do retângulo:"
const1: .float 0.0
const2: .float 0.0
Area: .asciiz"A area do retângulo="
.text
#cump
li $v0,4
la $a0,cump
syscall

#pedelargura:
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

#calc: 
mul.s $f0,$f3,$f4

#print_:area
li $v0,4
la $a0,Area
syscall
mov.s $f12,$f0
li $v0,2
syscall

li $v0,10 #return 0;
syscall