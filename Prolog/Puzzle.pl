%This solves the SEND+MORE=MONEY puzzle.
solve :-
        X = [S,E,N,D,M,O,R,Y],
        Digits = [0,1,2,3,4,5,6,7,8,9],
        assign_digits(X, Digits), %Assigning digits to the Letters.
        M > 0, %M cannot be 0, 
        S > 0, %S cannot be 0,
                  1000*S + 100*E + 10*N + D +
                  1000*M + 100*O + 10*R + E =:=
        10000*M + 1000*O + 100*N + 10*E + Y, %Evaluating the expression.
        write(X).

%This deletes X from the list.		
delete(X, [X|R], R).
delete(X, [Y|Xs], [Y|Ys]):- delete(X, Xs, Ys).

%This assigns digits to the letters in the list.
assign_digits([], Digits).
assign_digits([H|T], Digits):-
        delete(H, Digits, Rest),
        assign_digits(T, Rest).