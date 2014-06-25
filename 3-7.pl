means(1,one).
means(2,two).
means(3,three).
means(4,four).
means(5,five).
means(6,six).
means(7,seven).
means(8,eight).
means(9,nine).
means(0,zero).

conc([],L,L).
conc([H|L1],L2,[H|BL]) :- conc(L1,L2,BL).

translate([],[]).
translate([H|T],L) :- translate(T,P) , conc([Q],P,L) , means(H,Q).
