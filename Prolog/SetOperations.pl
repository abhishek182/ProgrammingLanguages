%This check if an element is present in the list or not.
isPresent(A,[A|_]).
isPresent(A,[_|T]):-isPresent(A,T).

%This check if all elements of first list is present in the second list or not.
subset([],L).
subset([H|T],L):-isPresent(H,L),subset(T,L).

%This gives the union of two lists.
union([],L,L).
union([H|T],L,R):-isPresent(H,L),union(T,L,R).
union([H|T],L,[H|R]):-not(isPresent(H,L)),union(T,L,R).

%This gives the intersection of two lists.
intersection([],L,[]).
intersection([H|T],L,R):-not(isPresent(H,L)),intersection(T,L,R).
intersection([H|T],L,[H|R]):-isPresent(H,L),intersection(T,L,R).

%This gives the set difference of two lists.
setdiff([],L,[]).
setdiff([H|T],L,R):-isPresent(H,L),setdiff(T,L,R).
setdiff([H|T],L,[H|R]):-not(isPresent(H,L)),setdiff(T,L,R).

%This insert and element into the list by pairing up with each element of the list. It returns list of list.
insert(X,[],[]).
insert(X,[H|T],[R1|R2]):-union([X],H,R1),insert(X,T,R2).

%This is returns all the subset of the given set.
powerset([],[[]]).
powerset([H|T],R):-powerset(T,R1),insert(H,R1,R2),union(R1,R2,R).