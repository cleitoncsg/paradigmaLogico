concat([],L,L).
concat([X|L1],L2,[X|L3]) :- concat(L1,L2,L3).

bubblesort([X],[X]).
bubblesort([X,Y|L1],L2) :- X < Y,
			   bubblesort([Y|L1],L3),
			   concat([X],L3,L2),!.
Bubblesort([X,Y|L1],L2) :- bubblesort([X|L1],L3),
			   concat([Y],L3,L2).
