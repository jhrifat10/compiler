%{
#include <stdio.h>

void printToken(const char* type, const char* value){
    printf("Input : %s\n", value);
    printf("Token : %s\n\n", type);
}
%}

%option noyywrap

id                  [a-zA-Z][a-zA-Z_0-9]*
keyword             (int|float|char|string|bool)
integer             [+-]?[0-9]+
number              ([+-]?[0-9]+([.][0-9]*)?(e[+-]?[0-9]*)?)
string              \"[^\"\n]*\"
binary              (true|false)














{id}                { printToken("Identifier", yytext); }

[ \t\r\n]+          { /* ignore whitespace */ }

.                   { printToken("Unknown", yytext); }

%%

int main() {
    yyin = fopen("input.txt", "r");
    yylex();
    return 0;
}
