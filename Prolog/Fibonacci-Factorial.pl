%Adding two numbers.
plus(0,Y,Y).
plus(s(X),Y,s(Z)):-plus(X,Y,Z).

%multiplying two numbers.
multiply(0,Y,0).
multiply(s(X),Y,A):-	multiply(X,Y,Z),
						plus(Z,Y,A).
						
%Factorial of 0 is 1 and else it is n multiplies by factorial of n-1.						
factorial(0,s(0)).
factorial(s(Y),X):-	factorial(Y,X1),
					multiply(X1,s(Y),X).

%0th element of fibonacci is 0 and 1st is 1, rest can be caculated by adding last two output.					
fibonacci(0,0).
fibonacci(s(0),s(0)).
fibonacci(s(s(N)),X):-	fibonacci(s(N),X1),
						fibonacci(N,X2),
						plus(X1,X2,X). 