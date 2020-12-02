
%{
    #include <math.h>
/*Inclusive start condition */

%}

%s expectf
%s expecti

%%
## BEGIN(expectf);
# BEGIN(expecti);
<expecti>[0-9]+      {
                printf( "found an integer, = %d\n",
                        atoi( yytext ) );
                }

<expecti>"."         {printf( "found a dot\n" );}
<expectf>[0-9]+.[0-9]+      {
                printf( "found a float, = %f\n",
                        atof( yytext ) );
                }
\n	BEGIN(INITIAL);
%%

int yywrap(){
	return 1;
}

int main()
{
 yylex();
}