%{ 
#undef yywrap

  int operation = 0; 
  float a, b; 
%} 
 

digit [0-9]+|([0-9]*)"."([0-9]+) 
add "+"
sub "-"
mul "*"
div "/"
ln \n 
%% 
  

{digit} {function1();} 
{add} {operation=1;} 
{sub} {operation=2;} 
{mul} {operation=3;} 
{div} {operation=4;}

{ln} {printf("\n The Answer is =%f\n\n",a);} 
  
%% 
function1()
{ 

 if(operation==0) 
  
 {
  a=atof(yytext);  
  
    
 }
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

   default:printf("operation not available");
   break;
   
   
   
  } 
 operation=0; 
 } 
} 

  
yywrap() 
 { 
  return 0; 
 } 
int main() 
{ 
 yylex(); 
} 
  
