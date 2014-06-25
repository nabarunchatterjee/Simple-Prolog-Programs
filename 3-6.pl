
conc([],L,L).
conc([H|L1],L2,[H|BL]) :- conc(L1,L2,BL).

shift([H|T],L) :- conc(T,[H],L).
