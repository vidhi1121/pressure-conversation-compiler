%{ 
#include<stdio.h>
int flag=0;
%} 


%token NUM 
%token REALNUM
%token UNITPA
%token KEYQUE
%token UNITBAR 
%token UNITATM 
%token UNITTORR
%token UNITIBF
%token IS
%token ONE 
%token Q



%%
ADI: A{
printf("Answer is: %0.15f \n",(float)$$/100000);
return 0; }; 
|B{
printf("Answer is: %0.15f \n",(float)$$/100000); 
return 0; };


A: NUM' 'UNITPA' 'KEYQUE' 'UNITBAR' 'KEYQUE' 'KEYQUE' 'KEYQUE {$$=(float)$1;}
  |NUM' 'UNITPA' 'KEYQUE' 'UNITATM' 'KEYQUE' 'KEYQUE' 'KEYQUE {$$=(float)($1*0.98692);}
  |NUM' 'UNITPA' 'KEYQUE' 'UNITTORR' 'KEYQUE' 'KEYQUE' 'KEYQUE {$$=(float)($1*750.06);}
  |NUM' 'UNITPA' 'KEYQUE' 'UNITIBF' 'KEYQUE' 'KEYQUE' 'KEYQUE {$$=(float)($1*14.5037737730);}
  |NUM' 'UNITBAR' 'KEYQUE' 'UNITPA' 'KEYQUE' 'KEYQUE' 'KEYQUE {$$=(float)($1*10000000000);}
  |NUM' 'UNITBAR' 'KEYQUE' 'UNITATM' 'KEYQUE' 'KEYQUE' 'KEYQUE {$$=(float)($1*98692);}
  |NUM' 'UNITBAR' 'KEYQUE' 'UNITTORR' 'KEYQUE' 'KEYQUE' 'KEYQUE {$$=(float)($1*75006000);}
  |NUM' 'UNITBAR' 'KEYQUE' 'UNITIBF' 'KEYQUE' 'KEYQUE' 'KEYQUE {$$=(float)($1*1450377.3773022);}
  |NUM' 'UNITATM' 'KEYQUE' 'UNITPA' 'KEYQUE' 'KEYQUE' 'KEYQUE {$$=(float)($1*10132500000);}
  |NUM' 'UNITATM' 'KEYQUE' 'UNITBAR' 'KEYQUE' 'KEYQUE' 'KEYQUE {$$=(float)($1*101325);}
  |NUM' 'UNITATM' 'KEYQUE' 'UNITTORR' 'KEYQUE' 'KEYQUE' 'KEYQUE {$$=(float)($1*76000000);}
  |NUM' 'UNITATM' 'KEYQUE' 'UNITIBF' 'KEYQUE' 'KEYQUE' 'KEYQUE {$$=(float)($1*1469594.87755142);}
  |NUM' 'UNITTORR' 'KEYQUE' 'UNITPA' 'KEYQUE' 'KEYQUE' 'KEYQUE {$$=(float)($1*13332236.8421);}
  |NUM' 'UNITTORR' 'KEYQUE' 'UNITBAR' 'KEYQUE' 'KEYQUE' 'KEYQUE {$$=(float)($1*133.3224);}
  |NUM' 'UNITTORR' 'KEYQUE' 'UNITATM' 'KEYQUE' 'KEYQUE' 'KEYQUE {$$=(float)($1*131.5789);}
  |NUM' 'UNITTORR' 'KEYQUE' 'UNITIBF' 'KEYQUE' 'KEYQUE' 'KEYQUE {$$=(float)($1*1933.6775);}
  |NUM' 'UNITIBF' 'KEYQUE' 'UNITPA' 'KEYQUE' 'KEYQUE' 'KEYQUE {$$=(float)($1*689475729.3168);}
  |NUM' 'UNITIBF' 'KEYQUE' 'UNITBAR' 'KEYQUE' 'KEYQUE' 'KEYQUE {$$=(float)($1*6894.7573);}
  |NUM' 'UNITIBF' 'KEYQUE' 'UNITATM' 'KEYQUE' 'KEYQUE' 'KEYQUE {$$=(float)($1*6804.5964);}
  |NUM' 'UNITIBF' 'KEYQUE' 'UNITTORR' 'KEYQUE' 'KEYQUE' 'KEYQUE {$$=(float)($1*5171493.2572);}
  
  
;



B:NUM' 'UNITPA' 'KEYQUE' 'KEYQUE' 'UNITBAR' 'Q {$$=(float)$1;}
  |NUM' 'UNITPA' 'KEYQUE' 'KEYQUE' 'UNITATM' 'Q {$$=(float)($1*0.98692);}
  |NUM' 'UNITPA' 'KEYQUE' 'KEYQUE' 'UNITTORR' 'Q {$$=(float)($1*750.06);}
  |NUM' 'UNITPA' 'KEYQUE' 'KEYQUE' 'UNITIBF' 'Q {$$=(float)($1*14.5037737730);}
  |NUM' 'UNITBAR' 'KEYQUE' 'KEYQUE' 'UNITPA' 'Q {$$=(float)($1*10000000000);}
  |NUM' 'UNITBAR' 'KEYQUE' 'KEYQUE' 'UNITATM' 'Q {$$=(float)($1*98692);}
  |NUM' 'UNITBAR' 'KEYQUE' 'KEYQUE' 'UNITTORR' 'Q {$$=(float)($1*75006000);}
  |NUM' 'UNITBAR' 'KEYQUE' 'KEYQUE' 'UNITIBF' 'Q {$$=(float)($1*1450377.3773022);}
  |NUM' 'UNITATM' 'KEYQUE' 'KEYQUE' 'UNITPA' 'Q {$$=(float)($1*10132500000);}
  |NUM' 'UNITATM' 'KEYQUE' 'KEYQUE' 'UNITBAR' 'Q {$$=(float)($1*101325);}
  |NUM' 'UNITATM' 'KEYQUE' 'KEYQUE' 'UNITTORR' 'Q {$$=(float)($1*76000000);}
  |NUM' 'UNITATM' 'KEYQUE' 'KEYQUE' 'UNITIBF' 'Q {$$=(float)($1*1469594.87755142);}
  |NUM' 'UNITTORR' 'KEYQUE' 'KEYQUE' 'UNITPA' 'Q {$$=(float)($1*13332236.8421);}
  |NUM' 'UNITTORR' 'KEYQUE' 'KEYQUE' 'UNITBAR' 'Q {$$=(float)($1*133.3224);}
  |NUM' 'UNITTORR' 'KEYQUE' 'KEYQUE' 'UNITATM' 'Q {$$=(float)($1*131.5789);}
  |NUM' 'UNITTORR' 'KEYQUE' 'KEYQUE' 'UNITIBF' 'Q {$$=(float)($1*1933.6775);}
  |NUM' 'UNITIBF' 'KEYQUE' 'KEYQUE' 'UNITPA' 'Q {$$=(float)($1*689475729.3168);}
  |NUM' 'UNITIBF' 'KEYQUE' 'KEYQUE' 'UNITBAR' 'Q {$$=(float)($1*6894.7573);}
  |NUM' 'UNITIBF' 'KEYQUE' 'KEYQUE' 'UNITATM' 'Q {$$=(float)($1*6804.5964);}
  |NUM' 'UNITIBF' 'KEYQUE' 'KEYQUE' 'UNITTORR' 'Q {$$=(float)($1*5171493.2572);}
 
   
  ;

%%
void main() 
{printf("LT Project Definition: IT019_IT020_IT021_IT022..... \n");
printf("If string will be valid then output will be displayed else error will be shown. \n \n"); 

yyparse();
if(flag==0)
printf("\nEntered sentence is Valid\n\n");

}
 void yyerror() {printf("Please enter valid value. \n"); flag=1; }

