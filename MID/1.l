%{ 
    int count_vowel=0; 
    int count_consonent =0; 
%} 
  
%% 
[aeiouAEIOU]	{++count_vowel;} 
[a-zA-Z]	{++count_consonent;} 
\n  {return 0;}
%% 
int yywrap(){
	return 1;
} 
int main() 
{ 
    printf("Enter the string :\n"); 
    yylex(); 
    printf("Number of vowels are:  %d\n", count_vowel); 
    printf("Number of consonants are:  %d\n", count_consonent); 
    return 0; 
}  