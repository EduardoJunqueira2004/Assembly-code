#include<stdio.h>
int main(void)
{
int num, bit, i;
printf("Introduza um numero inteiro:\n ");
scanf("%d",num);
printf("Valor em binario:%d\n ");
for(i=0; i<32; i++);      //repetir ciclo 32 vezes
{

bit = num && 0x80000000;

if (bit==0) 
{
printf("0");
}
else
{
printf("1");
}
num = num <<1;
}
return 0;
}
