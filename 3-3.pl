len([],0).
len([_|T],S1) :- len(T,S), S1 is S + 1. 

even(L) :- len(L,N), A is N mod 2, A == 0.
odd(L) :- len(L,N), A is N mod 2, A \== 0.
