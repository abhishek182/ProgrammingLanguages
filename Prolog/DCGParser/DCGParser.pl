program(fp(K)) --> k(K), [.]. 
k(fk(D,C)) --> [begin], d(D), [;], c(C), [end]. 
d(fd(I,N,DD)) --> [const], i(I), [=], n(N) ,ddash(DD).
d(fd(I,DD)) --> [var], i(I), ddash(DD).
ddash(fdd([])) --> [].
ddash(fdd(D,DD)) --> [;], d(D), ddash(DD).
c(fc(I,E,CD)) --> i(I), [:=], e(E), cdash(CD).
c(fc(B,C1,C2,CD)) --> [if], b(B), [then], c(C1), [else], c(C2), [endif], cdash(CD).
c(fc(B,C,CD)) --> [while], b(B), [do], c(C), [endwhile], cdash(CD).
c(fc(K,CD)) --> k(K), cdash(CD).
cdash(fc([])) --> [].
cdash(fc(C,CD)) --> [;], c(C), cdash(CD).
e(fe(I,ED)) --> i(I), edash(ED).
e(fe(N,ED)) --> n(N), edash(ED).
edash(fed([])) --> [].
edash(fed(E,ED)) --> [+], e(E), edash(ED).
edash(fed(E,ED)) --> [-], e(E), edash(ED).
edash(fed(E,ED)) --> [*], e(E), edash(ED).
edash(fed(E,ED))--> [/], e(E), edash(ED).
b(fb(true)) --> [true]. 
b(fb(false))--> [false].
b(fb(E1,E2))--> e(E1), [=], e(E2).
b(fb(B)) --> [not], b(B).
i(fi(x)) --> [x].
i(fi(y)) --> [y].
i(fi(z)) --> [z].
i(fi(u)) --> [u].
i(fi(v)) --> [v].
n(fn(0)) --> [0].
n(fn(1)) --> [1].
n(fn(2)) --> [2].
n(fn(3)) --> [3].
n(fn(4)) --> [4].
n(fn(5)) --> [5].
n(fn(6)) --> [6].
n(fn(7)) --> [7].
n(fn(8)) --> [8].
n(fn(9)) --> [9].