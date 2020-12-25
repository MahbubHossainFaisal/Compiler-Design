%{ 
  int operation = 1; 
  float a, b; 
%} 
  
digit [0-9]+|([0-9]*)"."([0-9]+) 
add "+"
sub "-"
mul "*"
div "/"
ln \n 
%% 
  

{digit} {digi();}  
{add} {operation=1;} 
{sub} {operation=2;} 
{mul} {operation=3;} 
{div} {operation=4;} 
{ln} {printf("\n The Answer is :%f\n\n",a);} 
  
%% 
digi() 
{ 
 if(operation==0) 
  
 a=atof(yytext);  
  
 else
 { 
 b=atof(yytext); 
  
 switch(operation) 
 { 
   case 1:a=a+b; 
    break; 
  
   case 2:a=a-b; 
   break; 
   
   case 3:a=a*b; 
   break; 
   
   case 4:a=a/b; 
   break; 
   default:
   printf("operation not available");
    break;
   
  } 
 operation=0; 
 } 
} 
  
yywrap() 
 { 
  return 0; 
 } 
main(int argv,char *argc[]) 
{ 
 yylex(); 
} 
  
