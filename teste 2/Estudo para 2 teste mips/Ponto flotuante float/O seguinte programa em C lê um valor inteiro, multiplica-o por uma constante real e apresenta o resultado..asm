#O seguinte programa em C lê um valor inteiro, multiplica-o por uma constante real e apresenta o resultado.
.data
perg1: .asciiz"Insira um valor inteiro:"
PI: .float 3.141598
resp: .asciiz"O resultado do valor inserido pela multiplicaçao por pi = "
.text

#perg1
li $v0,4
la $a0,perg1
syscall
li $v0,5
syscall
move $a0,$v0

jal calc

li $v0,4
la $a0,resp
syscall

li $v0,2
mov.s $f12,$f0
syscall

li  $v0,10
syscall

#calc virgula flutuante
calc:	#convert $f0 para $a0
	mtc1 $a0,$f0     
	cvt.s.w $f0,$f0
	#adiciona 0 PI no f1
	#lwc1 $f1,PI
	l.s $f1,PI
	#multiplicação
	
	mul.s $f0,$f0,$f1   #f0,f1 não pode ser f2,f3
	jr $ra #jump pra return adress jal calc






