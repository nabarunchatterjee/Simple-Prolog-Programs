splitsum(L,S,X) :- subset(L,X),sum(X,S).

subset(_,[]).
subset([H|T],[H|U]) :- subset(T,U).
subset([H|T],[I|U]) :- H \== I,subset(T,[I|U]).

sum([],0).
sum([H|T],S) :- sum(T,P), S is P + H.
