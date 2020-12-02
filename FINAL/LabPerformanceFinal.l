%{
    

%}

%s RULE1
%s RULE2

%%
# BEGIN(RULE1);
## BEGIN(RULE2);
<RULE1>[0-9]+      {
                printf( "contains only digit\n");
                }

<RULE1>[a-z]+         {printf( "contains lowercase letters\n" );}

<RULE1>.+	{printf("No action executed\n");}

<RULE2>[0-9]+	{
               		printf( "contains only digit");
                }
<RULE2>[a-z]+	{ printf("contains only lowercase letters\n");}

<RULE2>[A-Z]+	{ printf("contains only uppercase letters\n");}

<RULE2>.+	{printf("No action executed");}
%%

int yywrap(){
	return 1;
}

int main()
{
 yylex();
}