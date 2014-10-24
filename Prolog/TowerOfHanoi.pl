%append second list to the first list.
append([],L,L).
append([H|T],L,[H|Z]):-append(T,L,Z).

%Nothing to move if no. of disks is 0, else recursivesly construct the list of moves and append in the list.
hanoi(0,A,B,_,[]).
hanoi(N,A,B,C,L):-	M is N-1,
					hanoi(M,A,C,B,L1),
					hanoi(M,C,B,A,L2),append(L1,[[A,B]|L2],L).