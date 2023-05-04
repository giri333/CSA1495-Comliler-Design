%{
#include<stdio.h>
%}
%%
if|else|while|int|switch|for|char|return|main {printf("\n%s is a KEYWORD",yytext);}
[a-zA-Z0-9]+ {printf("\n%s is identifier",yytext);}
[+|=|-|<|>|^]+ {printf("\n%s is an operator",yytext);}
%%
int yywrap(){}
int main()
{
yyin=fopen("sample.c","r");
yylex();
return 0;
}
