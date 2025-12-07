# 🎯Project Name: Lexical Analyzer Using Flex (Token Generator)

---

This project is a lexical analyzer based on Lex (Flex) that recognizes various token types from an input file. It recognizes strings, booleans, numbers, different types of operators, identifiers, and keywords.

---

# 🚀Features:
The lexical analyzer can recognize:
## Keywords
- int, float, char, string, bool
- if, elif, else
- for, while
- func, print, return
- continue, break
## Identifiers
- Variable names like (x, y, course, message)
## Numbers
- 0,10
- 3.14
## Operators
- Math/Arithmetic Operators: + - * / %
- Assignment Operator: = += -= *= /= %= <<= etc.
- Comparison Operator: == != > < >= <=
- Logical Operator: &&
- Bitwise Operator: & | ^ >> <<
- Unary Operators: x++, y--, --x, y++
## Strings
- "Hello world"
- "Compiler_Design"
## Boolean
- true, false
## Identifier Statements
- Identifier patterns like: x = 10, x=x+1, x=y
## Unknown Characters
- Any unmatched symbol like , ( ) ; is printed as Unknown
---
# 📋Project Structure:


```
/Lex-Scanner
|── lexer.l          # Lex/Flex source code
│── input.txt        # Input test file
│── README.md        # Documentation
│── a.out / lex.yy.c # Auto-generated (after build)

```

 # 🛠️ Methodology How the Code Works
- The methodology for this project describes the complete process used to design, develop, and test a lexical analyzer that identifies tokens such as keywords, identifiers, operators, numbers, and strings from an input source file.

---
## Functional Requirements
- Read input program from a file (input.txt)
- Identify and categorize tokens:
- Whitespace ignoring
- Display each token with its type

# Implementation:
## 1. Definitions Section (%)
- Haderfile
- Token regex patterns
- Helper function printToken()

## 2. Designing Token Patterns Regular Expression
- Using Flex, each token type was defined using clear regex rules:
```
id          [a-zA-Z][a-zA-Z_0-9]*
keyword     (int|float|char|string|bool)
number      ([+-]?[0-9]+([.][0-9]*)?(e[+-]?[0-9]*)?)
...
```

## 3. Flex Rules Section (%%)
- Flex matches each line using rules
- Each regex mapped to appropriate token printing
```
...
{keyword}      printToken("Keyword", yytext);
{math_op}      printToken("Math Operator", yytext);
{string}       printToken("String", yytext);
{id}           printToken("Identifier", yytext);
.              printToken("Unknown", yytext);
```
## 4. User Code Section (Main)

- open file input.txt, 
- Call yylex() to start scanning runs scanner, exits.

# Output Module:

Input : int
- Token : Keyword

Input : x = 10
- Token : Identifier Statement

Input : ;
- Token : Unknown

Input : x
- Token : Identifier

Input : =
- Token : Assignment Operator

Input : 10
- Token : Number

Input : float
- Token : Keyword

Input : y = 3.14
- Token : Identifier Statement

Input : ;
- Token : Unknown

Input : y
- Token : Identifier

Input : =
- Token : Assignment Operator

Input : 3.50
- Token : Number

Input : char
- Token : Keyword

Input : course
- Token : Identifier

Input : =
- Token : Assignment Operator

Input : "Compiler_Design"
- Token : String

Input : ;
- Token : Unknown

Input : string
- Token : Keyword

Input : message
- Token : Identifier

Input : =
- Token : Assignment Operator

Input : "Hello world"
- Token : String

Input : ;
- Token : Unknown

Input : if
- Token : If Keyword

Input : (
- Token : Unknown

Input : x
- Token : Identifier

Input : <
- Token : Comparison Operator

Input : y
- Token : Identifier

Input : )
- Token : Unknown

Input : x = x + 1
- Token : Identifier Statement

Input : ;
- Token : Unknown

Input : else
- Token : Else Keyword

Input : x = y
- Token : Identifier Statement

Input : ;
- Token : Unknown

Input : x
- Token : Identifier

Input : +
- Token : Math Operator

Input : y
- Token : Identifier

Input : x
- Token : Identifier

Input : -
- Token : Math Operator

Input : y
- Token : Identifier

Input : x
- Token : Identifier

Input : *
- Token : Math Operator

Input : y
- Token : Identifier

Input : x
- Token : Identifier

Input : /
- Token : Math Operator

Input : y
- Token : Identifier

Input : x++
- Token : Unary Operator

Input : ;
- Token : Unknown

Input : y--
- Token : Unary Operator

Input : ;
- Token : Unknown

Input : true
- Token : Boolean

Input : ;
- Token : Unknown

Input : false
- Token : Boolean

Input : ;
- Token : Unknown

Input : x
- Token : Identifier

Input : &&
- Token : Logical Operator

Input : y
- Token : Identifier

Input : x
- Token : Identifier

Input : |
- Token : Logical Operator

Input : y
- Token : Identifier

Input : x
- Token : Identifier

Input : ==
- Token : Comparison Operator

Input : y
- Token : Identifier

Input : y
- Token : Identifier

Input : >
- Token : Comparison Operator

Input : z
- Token : Identifier

Input : z
- Token : Identifier

Input : <
- Token : Comparison Operator

Input : x
- Token : Identifier

Input : return
- Token : Return Keyword

Input : 0
- Token : Number

Input : ;
- Token : Unknown
