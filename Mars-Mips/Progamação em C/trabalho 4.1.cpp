#include<stdio.h>
int main(void){
int num=0, i=0;
static char str[20]; // Reserva espa�o para um array de
// caracteres no segmento de dados
read_str&num(str, 20);// �str� � o endere�o inicial do espa�o
// reservado para alojar a string (na
   // mem�ria externa)
while (str[i] != "\0") // Acede ao caracter (byte) na posi��o
{ // �i� do array e compara-o com o
// caracter terminador da string
// (isto �, �\0� = 0x00)
if ((str[i] >= "0") && (str[i] <="9")) num++;
i++;
}
print_int10(num);
return 0;
}
