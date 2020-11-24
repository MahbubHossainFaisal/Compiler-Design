
%{
int count_line = 0;
int count_words = 0;
int count_small_letters = 0;
int count_capital_letters = 0;
int count_digits = 0;
int count_special_letters = 0;
int count_total_characters = 0;
%}

%%

\n  {++count_line;}
[\t' ']  ++count_words;
[a-z]	{++count_small_letters; 
		 ++count_total_characters;}
[A-Z]	{++count_capital_letters;
		 ++count_total_characters;}
[0-9]	{++count_digits;
		 ++count_total_characters;}

[ ]	
.	{++count_special_letters;
	 ++count_total_characters;}


%%




int yywrap(){ return 1; } 
int main(){ 


FILE *fp; 
char filename[300]; 
printf("Enter the filename: \n"); 
scanf("%s",filename); 
fp = fopen(filename,"r"); 
yyin = fp; 
yylex(); 
printf("\n This file contains: \n");
printf("%d ",count_line);

printf("lines\n");
printf("%d ",count_words);

printf("words\n");
printf("%d ",count_small_letters);
printf("small letters\n");
printf("%d ",count_capital_letters);
printf("capital letters\n");
printf("%d ",count_digits);
printf("digits\n");
printf("%d ",count_special_letters);
printf("special characters\n");
printf("In total ");
printf(" %d ",count_total_characters);
printf("characters\n");
return 0; 

}