
conc([],L,L).
conc([H|L1],L2,[H|BL]) :- conc(L1,L2,BL).

last(H,L) :- conc(_,[H],L).

last1(H,[H]).
last1(P,[_|T]) :- last1(P,T).   
