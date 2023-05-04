%{
#include<stdio.h>
%}

%%
\<[^>]*\> fprintf(yyout,"%s\n",yytext);
.|\n; 
%%

int yywrap()
{
return 1;
}

int main()
{
yyin=fopen("input7.html","r");
yyout=fopen("output7.txt","w");
yylex();
return 0;
}

INPUT-
<html>
<head>
</head>
<body>
<h1>My First Heading</h1>
<p>My first paragraph.</p>
</body>
</html>
