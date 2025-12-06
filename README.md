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
- Identifier patterns like: int x = 10, x=x+1
## Unknown Characters
- Any unmatched symbol like , ( ) ; is printed as Unknown
---






# Output:

Input : int
Token : Keyword

Input : x = 10
Token : Identifier Statement

Input : ;
Token : Unknown

Input : x
Token : Identifier

Input : =
Token : Assignment Operator

Input : 10
Token : Number

Input : float
Token : Keyword

Input : y = 3.14
Token : Identifier Statement

Input : ;
Token : Unknown

Input : y
Token : Identifier

Input : =
Token : Assignment Operator

Input : 3.50
Token : Number

Input : char
Token : Keyword

Input : course
Token : Identifier

Input : =
Token : Assignment Operator

Input : "Compiler_Design"
Token : String

Input : ;
Token : Unknown

Input : string
Token : Keyword

Input : message
Token : Identifier

Input : =
Token : Assignment Operator

Input : "Hello world"
Token : String

Input : ;
Token : Unknown

Input : if
Token : If Keyword

Input : (
Token : Unknown

Input : x
Token : Identifier

Input : <
Token : Comparison Operator

Input : y
Token : Identifier

Input : )
Token : Unknown

Input : x = x + 1
Token : Identifier Statement

Input : ;
Token : Unknown

Input : else
Token : Else Keyword

Input : x = y
Token : Identifier Statement

Input : ;
Token : Unknown

Input : x
Token : Identifier

Input : +
Token : Math Operator

Input : y
Token : Identifier

Input : x
Token : Identifier

Input : -
Token : Math Operator

Input : y
Token : Identifier

Input : x
Token : Identifier

Input : *
Token : Math Operator

Input : y
Token : Identifier

Input : x
Token : Identifier

Input : /
Token : Math Operator

Input : y
Token : Identifier

Input : x++
Token : Unary Operator

Input : ;
Token : Unknown

Input : y--
Token : Unary Operator

Input : ;
Token : Unknown

Input : true
Token : Boolean

Input : ;
Token : Unknown

Input : false
Token : Boolean

Input : ;
Token : Unknown

Input : x
Token : Identifier

Input : &&
Token : Logical Operator

Input : y
Token : Identifier

Input : x
Token : Identifier

Input : |
Token : Logical Operator

Input : |
Token : Logical Operator

Input : y
Token : Identifier

Input : x
Token : Identifier

Input : ==
Token : Comparison Operator

Input : y
Token : Identifier

Input : y
Token : Identifier

Input : >
Token : Comparison Operator

Input : z
Token : Identifier

Input : z
Token : Identifier

Input : <
Token : Comparison Operator

Input : x
Token : Identifier

Input : return
Token : Return Keyword

Input : 0
Token : Number

Input : ;
Token : Unknown
