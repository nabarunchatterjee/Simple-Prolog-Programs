
sum([],0).
sum([H|T],S1) :- sum(T,S), S1 is S + H. 

conc([],L,L).
conc([H|L1],L2,[H|BL]) :- conc(L1,L2,BL).
subset(_,[]).
subset([H|L],[H|S]) :- subset(L,S).
subset([H|L],[Q|S]) :- H \== Q ,subset(L,[Q|S]).
subsum(L,N,S) :- subset(L,S),sum(S,N).
cnt(L,N,C) :- setof([L,N,S],subsum(L,N,S),S1),length(S1,C).
