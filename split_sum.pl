sum([],0).
sum([H|T],S1) :- sum(T,S), S1 is S + H. 

conc([],L,L).
conc([H|L1],L2,[H|BL]) :- conc(L1,L2,BL).

len([],0).
len([_|T],S1) :- len(T,S), S1 is S + 1. 

split(L,P,L1,L2) :- conc(L1,L2,L),len(L1,P). 

split_sum(L,P,S1,S2) :- split(L,P,L1,L2),sum(L1,S1),sum(L2,S2).
