conc([],L,L).
conc([H|L],L1,[H|L2]) :- conc(L,L1,L2).

subset(_,[]).
subset(L,S) :- conc(_,L2,L),conc(S,_,L2),length(S,P),P > 0.
