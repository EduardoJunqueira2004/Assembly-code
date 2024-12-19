#area_círculo pir^2 mais simples
.data
cump: .asciiz "Olá,utilizador"
raio: .asciiz "\nPorfavor introduza o raio do círculo:"
const: .float 0.0
PI: .float 3,141592653
Area: .asciiz"A area do círculo="
.text
#cump
li $v0,4
la $a0,cump
syscall

#pederaio:
la $a0,raio
syscall
#guarda raio
li $v0 6
syscall
#passar int para float
lwc1 $f1,const
add.s $f3,$f1,$f0


#calc:
lwc1  $f2,PI   
mul.s $f0,$f3,$f3
mul.s $f0,$f0,$f2

#print_:area
li $v0,4
la $a0,Area
syscall
mov.s $f12,$f0
li $v0,2
syscall

li $v0,10 #return 0;
syscall
	
