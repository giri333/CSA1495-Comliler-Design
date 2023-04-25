%{
#include<stdio.h>
%}
%%
[0-9]+ {printf("\nInput is a digit");}
.+ {printf("Input is a digit");}
%%

int yywrap(){}
int main()
{
while(yylex());
}
