.data
PI:.float 3.141592
.text
#imprimir valor de float
li $v0,2
lwc1 $f12,PI #load word coprec1 da variável $f12  de PI
syscall
