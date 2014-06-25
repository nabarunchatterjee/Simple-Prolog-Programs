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

solve(Node,Solution) :- depthfirst([],Node,Solution).

depthfirst(Path,Node,[Node|Path]) :- goal(Node).

depthfirst( Path, Node, Sol) :-
	edge( Node, Node1),
	not(member( Node1, Path)),
	depthfirst( [Node | Path], Node1, Sol).

                              


