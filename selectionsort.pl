 select1([],[]).
 select1(R,[X|Z]):- finmin(R,X),remove(X,R,W),select1(W,Z).
 finmin([L],L).
 finmin([X1, H|R],X):- X1 < H,finmin([X1|R],X).
 finmin([X1, H|R],X):- X1 > H,finmin([H|R],X).
remove(X,[X|R],R).
remove(X,[H|R],[H|W1]):- X\=H,remove(X,R,W1).
