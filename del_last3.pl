conc([],L,L).
conc([H|L1],L2,[H|BL]) :- conc(L1,L2,BL).

lastthree(L,L1) :- conc(L1,[_|L3],L),conc([_],[_],L3).
firstthree(L,L1) :- conc([_|L2],L1,L),conc([_],[_],L2).
