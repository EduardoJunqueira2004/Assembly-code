#include<stdio.h>
void main(void){
int num, bit, i;
printf("Introduza um numero inteiro: ");
scanf("%d", &num);
printf("Valor em binario: ");
for(i=0; i<32; i++){
bit = num & 0x80000000;
if (bit==0) 
printf("0");
else

printf("1");

num = num << 1;
}
}

