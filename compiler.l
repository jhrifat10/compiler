%{
#include <stdio.h>

/* These variables MUST be declared here to avoid "undeclared" errors later */
int wordCount = 0;
int stringCount = 0;
int operatorCount = 0;
%}

%%

[ \t\n]+                { /* ignore whitespace */ }

[0-9]+                  { printf("Number: %s\n", yytext); }

[a-zA-Z]+               { 
                          wordCount++; 
                          printf("Word: %s\n", yytext); 
                        }

\"([^\"\\]|\\.)*\"      { 
                          stringCount++;
                          printf("String: %s\n", yytext);
                        }

"=="|"!="|">="|"<="|">"|"<" { 
                          operatorCount++; 
                          printf("Operator: %s\n", yytext); 
                        }


"++"|"--"|"+"|"-"|"*"|"/"|"%" { 
                          operatorCount++; 
                          printf("Operator: %s\n", yytext); 
                        }


"="                     { operatorCount++; printf("Operator: %s\n", yytext); }

.                       { printf("Others: %s\n", yytext); }

%%

int yywrap() { return 1; }

int main() 
{
    yylex();
    printf("\nCounts => Words: %d, Strings: %d, Operators: %d\n", wordCount, stringCount, operatorCount);
    return 0;
}
