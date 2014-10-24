mother(lisa,abe).
mother(lisa,sarah).
%Listing down the facts to test the predicates.
mother(nancy,john).
mother(sarah,susan).
mother(susan,jack).
father(tony,abe).
father(tony,sarah).
father(bill,susan).
father(abe,john).
father(john,jill).
male(abe).
male(john).
male(bill).
male(tony).
male(jack).
male(jill).
female(lisa).
female(nancy).
female(susan).
female(sarah).

%Parent can be either a mother or father.
parent(X,Y):-mother(X,Y).
parent(X,Y):-father(X,Y).

%X and Y belong to same generation if either both of them has same parents or their parents are from same generation.
same_generation(X,Y):-	parent(Z,X), 
						parent(Z,Y).
same_generation(X,Y):-	parent(A,X),
						parent(B,Y),
						same_generation(A,B).