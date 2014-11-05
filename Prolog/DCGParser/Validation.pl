p --> k, [.]. 
k --> [begin], d, [;], c, [end]. 
d --> [const], i, [=], n ,ddash.
d --> [var], i, ddash.
ddash --> [].
ddash --> [;], d, ddash.
c --> i, [:=], e, cdash.
c --> [if], b, [then], c, [else], c, [endif], cdash.
c --> [while], b, [do], c, [endwhile], cdash.
c --> k, cdash.
cdash --> [].
cdash --> [;], c, cdash.
e --> i, edash.
e --> n, edash.
edash --> [].
edash --> [+], e, edash.
edash --> [-], e, edash.
edash --> [*], e, edash.
edash --> [/], e, edash.
b --> [true]. 
b --> [false].
b --> e, [=], e.
b --> [not], b.
i --> [x].
i --> [y].
i --> [z].
i --> [u].
i --> [v].
n --> [0].
n --> [1].
n --> [2].
n --> [3].
n --> [4].
n --> [5].
n --> [6].
n --> [7].
n --> [8].
n --> [9].
test :- p([begin, const, x, =, 8, ;, var, y, ;, var, z, ;, z, :=, 0, ;, if, x, =, y, +, 2, then, z , := , 5, else, z, :=, 3, endif, ;, while, not, x, =, z, do, z, :=, z, +, 2, endwhile, end, .], []).