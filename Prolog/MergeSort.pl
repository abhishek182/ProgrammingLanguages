%This divides the list by putting elements in odd position in one list and elements with even position in another list.
divide(L,L1,L2):-evenOdd(L,L1,L2).
evenOdd(L,E,O):-odd(L,E,O).
odd([],[],[]).
odd([H|T],E,[H|O]):-even(T,E,O).   
even([],[],[]).
even([H|T],[H|E],O):-odd(T,E,O).


mergeSort([],[]).     %sorting empty list. 
mergeSort([X],[X]).   %sorting list with one element.
mergeSort(LIn,LOut):- 
	LIn=[_,_|_],      %dividing if list contains two or more than two elements.
	divide(LIn,L1,L2),     	
	mergeSort(L1,LO1),
	mergeSort(L2,LO2),  						
	merge(LO1,LO2,LOut).	%merge step.
	
merge([],L,L).
merge(L,[],L):-L\=[].
merge([X|T1],[Y|T2],[X|T]):-X=<Y, %Put X in the output list.
							merge(T1,[Y|T2],T).
merge([X|T1],[Y|T2],[Y|T]):-X>Y,  %Put Y in the output list. 
							merge([X|T1],T2,T).