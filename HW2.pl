%write a string reversal
rev([],[]).
rev([Head|Tail], Out) :- rev(Tail, Tout), append(Tout, [Head], Out).

%Find the smallest element of a list
smaller(null,B,C) :- C is B.
smaller(A,null,C) :- C is A.
smaller(A,B,C) :- A > B, C is B.
smaller(A,B,C) :- A =< B, C is A.

smallest([], null).
smallest([Head|Tail], X) :- smallest(Tail, Y), smaller(Y, Head, X).

%sort a list

mergesort([],[]).
mergesort([A],[A]).

mergesort([A,B|Rest],S) :- 
split([A,B|Rest], L1, L2),
mergesort(L1, S1),
mergesort(L2, S2),
mymerge(S1, S2, S).

split([],[],[]).
split([A], [A], []).
split([A,B|R], [A| L1], [B| L2]) :- split(R, L1, L2). 

mymerge(A,[], A).
mymerge([],B, B).

mymerge([A|RA],[B|RB], [A|M]) :-
A=<B,
mymerge(RA, [B|RB], M).

mymerge([A|RA], [B|RB], [B|M]) :-
A>B,	
mymerge([A|RA], RB, M).  