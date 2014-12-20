The denotational semantics of simple language takes program as list of tokens, takes two values X and Y, return back Z. 
The program must satisfy following grammar:

P in Program
K in Block
D in Declaration
C in Command
E in Arithmetic Expression
B in Boolean Expresion
I in Identifier
N in Number
P ::= K.
K ::= begin D; C end
D ::= D ; D | const I = N | var I
C ::= C ; C | I := E | if B then C else C endif| while B do C endwhile | K
B ::= true | false | E = E | not B | (B)
E ::= E + E | E - E | E * E | E / E | (E) | I:= E | I | N
I ::= x | y | z | u | v | w
N ::= 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 