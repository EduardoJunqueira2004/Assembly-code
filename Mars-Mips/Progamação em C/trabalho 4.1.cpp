#include<stdio.h>
int main(void){
int num=0, i=0;
static char str[20]; // Reserva espaço para um array de
// caracteres no segmento de dados
read_str&num(str, 20);// “str” é o endereço inicial do espaço
// reservado para alojar a string (na
   // memória externa)
while (str[i] != "\0") // Acede ao caracter (byte) na posição
{ // “i” do array e compara-o com o
// caracter terminador da string
// (isto é, ‘\0’ = 0x00)
if ((str[i] >= "0") && (str[i] <="9")) num++;
i++;
}
print_int10(num);
return 0;
}
