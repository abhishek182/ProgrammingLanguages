DCGParser for following grammer: Left recursion is also handled in the prolog program

P ::= K. 
K ::= begin D; C end 
D ::= D ; D | const I = N | var I 
C ::= C ; C | I := E | if B then C else C endif| while B do C endwhile | K 
B ::= true | false | E = E | not B 
E ::= E + E | E - E | E * E | E / E | I | N 
I ::= x | y | z | u | v 
N ::= 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9


Test run on following input:

begin 
   const  x  =  8; 
   var  y; 
   var  z; 
   z  :=  0; 
   if  x  =  y + 2 then  z  :=  5 else  z  :=  3   endif; 
   while  not  x  =  z  do 
     z  :=  z  +  2 
   endwhile 
end.

HOW TO RUN:

Using DCGParser.pl - Generate the parse tree.

?-L = [begin, const, x, =, 8, ;, var, y, ;, var, z, ;, z, :=, 0, ;, if, x, =, y, +, 2, then, z , := , 5, else, z, :=, 3, endif, ;, while, not, x, =, z, do, z, :=, z, +, 2, endwhile, end, .], program(P, L, []).

Using Validation.pl - Give true or false whether input follows the given grammer or not.

?- test