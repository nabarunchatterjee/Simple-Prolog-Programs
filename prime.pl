primeupto(1,[1]).
primeupto(H,[H|L]) :- H > 1,isprime(H),Q is H - 1 ,primeupto(Q,L).  
primeupto(H,L) :- H > 1,not(isprime(H)),Q is H - 1 ,primeupto(Q,L).  

isprime(1).
isprime(N) :- P is round(sqrt(N)), notdivisible(N,P).

notdivisible(N,2) :- R is N mod 2, R \== 0.
notdivisible(N,P) :- R is N mod P, R \== 0 ,P > 2, Q is P - 1 ,notdivisible(N , Q).


%check every alternate element in  the array for primality and sum the up
remfirst([],[]).
remfirst([_|T],T).
sum_alt_prime([],0).
sum_alt_prime([H|L],S) :- isprime(H),remfirst(L,Q), sum_alt_prime(Q,R), S is R + H .
sum_alt_prime([H|L],S) :- not(isprime(H)), remfirst(L,Q),sum_alt_prime(Q,S). 
