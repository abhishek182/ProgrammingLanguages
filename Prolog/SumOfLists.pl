%Adding the list with variable length using each case.
sumLists([],[],[],[]).
sumLists([H1|T1],[H2|T2],[],[HR|TR]):-	sumLists(T1,T2,[],TR),
										HR is H1+H2.
sumLists([H1|T1],[],[],[HR|TR]):-	sumLists(T1,T2,[],TR),
									HR is H1.
sumLists([H1|T1],[],[H3|T3],[HR|TR]):-	sumLists(T1,[],T3,TR),
										HR is H1+H3.
sumLists([],[],[H3|T3],[HR|TR]):-	sumLists([],[],T3,TR),
									HR is H3.
sumLists([],[H2|T2],[H3|T3],[HR|TR]):-	sumLists([],T2,T3,TR),
										HR is H2+H3.
sumLists([],[H2|T2],[],[HR|TR]):-	sumLists([],T2,[],TR),
									HR is H2.
sumLists([H1|T1],[H2|T2],[H3|T3],[HR|TR]):-	sumLists(T1,T2,T3,TR),
											HR is H1+H2+H3.