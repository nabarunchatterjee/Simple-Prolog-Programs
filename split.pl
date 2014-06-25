split(L,0,[],L).
split([H|T],N,[H|L1],L2) :- split(T,N1,L1,L2), N is N1 + 1.
