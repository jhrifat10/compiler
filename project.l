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

math_op             [+\-*/%]
ass_op              (\+=|\-=|\*=|\/=|%=|&=|\^=|<<=|>>=|=)
comp_op             (==|!=|>=|<=|>|<)

logical_op          (and|or|xor|&&|\|)
bitwise_op          (&|\||\^|>>|<<)

unary_op            (({id}(--|\+\+))|((--|\+\+){id}))
assignment          ({id}[ ]*{ass_op}[ ]*({id}|{number})([ ]*{math_op}[ ]*({id}|{number}))?)

if_kw               if
elif_kw             elif
else_kw             else
for_kw              for
while_kw            while
func_kw             func
print_kw            print
return_kw           return
skip_kw             (continue|break)

%%

{logical_op}        { printToken("Logical Operator", yytext); }
{bitwise_op}        { printToken("Bitwise Operator", yytext); }
{keyword}           { printToken("Keyword", yytext); }
{integer}           { printToken("Number", yytext); }


{number}            { printToken("Number", yytext); }
{string}            { printToken("String", yytext); }
{binary}            { printToken("Boolean", yytext); }


{math_op}           { printToken("Arithmetic Operator", yytext); }
{ass_op}            { printToken("Assignment Operator", yytext); }
{comp_op}           { printToken("Comparison Operator", yytext); }
{unary_op}          { printToken("Unary Operator", yytext); }
{assignment}        { printToken("Identifier Statement", yytext); }

{if_kw}             { printToken("If Keyword", yytext); }
{elif_kw}           { printToken("Elif Keyword", yytext); }
{else_kw}           { printToken("Else Keyword", yytext); }
{for_kw}            { printToken("For Keyword", yytext); }
{while_kw}          { printToken("While Keyword", yytext); }
{func_kw}           { printToken("Function Keyword", yytext); }
{print_kw}          { printToken("Print Keyword", yytext); }
{return_kw}         { printToken("Return Keyword", yytext); }
{id}                { printToken("Identifier", yytext); }

[ \t\r\n]+          { /* ignore whitespace */ }

.                   { printToken("Unknown", yytext); }

%%

int main() {
    yyin = fopen("input.txt", "r");
    yylex();
    return 0;
}
