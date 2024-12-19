#area do circulo pixr^2
.data
pede_raio: .asciiz"Introduza o valor real do raio:"
constraio: .float 0.0 #sempre que queres adicionar um ponto float tens de introduzir const: 0.0;
pi: .float  3.141592653
mostra_area: .asciiz"Area do circulo="
.text
#pedir raio
li $v0,4
la $a0,pede_raio
syscall

#guardar raio
li $v0,6
syscall
#passar int para float
lwc1 $f1,constraio
add.s $f3,$f1,$f0 #valor inserido vai estar guardado no $f3

l.s $f2,pi#guardar valor pi no $f2
operação:
mul.s $f0,$f3,$f3 #r*r guarda em $f0
mul.s $f0,$f2,$f0 #pi*r^2=
j mostra_Area

mostra_Area:
li $v0,4
la $a0,mostra_area
syscall
mov.s $f12,$f0 #guarda o valor $f0 para $f12
li $v0,2#tem que estar em $f12
syscall

#exit
li $v0,10
syscall



