%This writes N spaces.
writeSpace(0).
writeSpace(N):-	M is N-1,
				write(' '),
				writeSpace(M).

%This draws N dashes ('-')
drawBase(0).
drawBase(N):-	M is N-1,
				write('-'),
				drawBase(M).

%This draws triangle of size N which means triangle will occupy N rows in the editor. No. of dashes is given by (N-1)*2. Number of left spaces by N-2 and middle space increases by 2 with each row staring with 0.
triangle(1,X,S):-	Y is (X-1)*2,
				drawBase(Y). 
triangle(N,X,S):-	A is N-2,
				writeSpace(A),
				write('/'),
				writeSpace(S),
				write('\\'),
				nl,
				M is N-1,
				R is S+2,
				triangle(M,X,R).
				
draw_isoc(N):-triangle(N,N,0).