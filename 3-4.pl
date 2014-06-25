
conc([],L,L).
conc([H|L1],L2,[H|BL]) :- conc(L1,L2,BL).
reverse([],[]).
reverse([H|T],R) :- reverse(T,R1), conc(R1,[H],R).
