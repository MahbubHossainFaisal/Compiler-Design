
%{ 
int count = 0; 
%} 

%% 
[0-9]+	{printf("positive integer : %s\n", yytext);}
[-0-9]+	{printf("negative integer : %s\n", yytext);}
[0-9]+*"."[0-9]+	
[-0-9]+*"."[0-9]+	
.
\n  {return 0;} 
%% 

int yywrap(){} 
int main(){ 

printf("Give input: \n");
yylex(); 

return 0;

}