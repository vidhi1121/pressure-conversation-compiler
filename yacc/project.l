%{ #include<stdio.h> 
#include "y.tab.h"
extern int yylval; 
%} 

%%

[0-9]+ {yylval=atoi(yytext); printf("%s : number\n",yytext);
return NUM; }
[0-9]+(.[0-9]+) {yylval=atoi(yytext); printf("%s : realnumber\n",yytext); return 
REALNUM;}
"ane"|"atle"|"chey"|"convert"|"ema"|"kar"|"ketala"|"ma"|"nakh"|"ne"|"noo"|"shu"|"thi"
 printf("%s : keyword\n",yytext); return KEYQUE;
"pa" printf("%s : opratore\n",yytext); return UNITPA;
"bar" printf("%s : opratore\n",yytext); return UNITBAR;
"atm" printf("%s : opratore\n",yytext); return UNITATM;
"torr" printf("%s : opratore\n",yytext); return UNITTORR;
"ibf/in^2" printf("%s : opratore\n",yytext); return UNITIBF;
"is" return IS;
"?" printf("%s : question mark\n",yytext); return Q;
"one" { yylval = 1; return ONE;}
[\t] ; 
[\n] return 0; 
. return yytext[0];

%%
int yywrap() 
{
return 1;
}