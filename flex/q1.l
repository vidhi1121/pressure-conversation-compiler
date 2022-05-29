%{
#include<stdio.h>
%}
Keyword "ketala"|"ne"|"thi"|"ane"|"noo"|"kar"|"Ema"|"nakh"|"Pachi"|"atle"|"shu"|"chey"|"convert"|"ma"
Op "Pa"|"atm"|"bar"|"torr"
Digit [0-9]
Int {Digit}+
Float {Digit}+(.{Digit})
qm "?"
ws [\t]
eos "."
sep ","
%%
{Keyword} {printf("Keyword - %s\n",yytext);}
{Op} {printf("Operator - %s\n",yytext);}
{Int} {printf("Integer - %s\n",yytext);}
{Float} {printf("Float Number - %s\n",yytext);}
{qm} {printf("que tag - %s\n",yytext);}
{eos} {printf("eos - %s\n",yytext);}
{sep} {printf("sep - %s\n",yytext);}
{ws} {printf("ws \n",yytext);}
. {printf("Invalid Token: %s\n",yytext);}
%%
int yywrap(){return 1;}
int main()
{
yylex();
return 0;
}