hanoi(1,P,Q,R) :- write( P --> R),nl.
hanoi(N,A,B,C) :- N > 1, M is N - 1,hanoi(M,A,C,B),hanoi(1,A,B,C),hanoi(M,B,A,C).
