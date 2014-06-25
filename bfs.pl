
edge(a,b).
edge(a,c).
edge(b,d).
edge(b,e).
edge(c,f).
edge(c,g).
edge(d,h).
edge(e,i).
edge(e,j).
edge(f,k).

goal(j).
goal(k).

conc([],L,L).
conc([H|L],L1,[H|L2]) :- conc(L,L1,L2).

solve(Start,Solution) :- breadthfirst([[Start]],Solution).
breadthfirst([[Node|Path] | _],[Node | Path] ) :- goal(Node).
breadthfirst([[N|Path]|Paths],Solution) :- 
	bagof([M,N|Path],(edge(N,M),not(member(M,[N|Path]))),NewPaths),
	conc(Paths,NewPaths,Paths1),!,
	breadthfirst(Paths1,Solution);breadthfirst(Paths,Solution). 
