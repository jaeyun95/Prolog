%example01 
%return length
len([],0).
len([_|T],N):-len(T,X),N is X+1.

%example02
accLen([_|T],A,L):-Anew is A+1, accLen(T,Anew,L).
accLen([],A,A).
len(List,Lenght):-accLen(List,0,Lenght).

%example03
max([H|T],A,Max):-
	H > A,
	max(T,H,Max).
max([H|T],A,Max):-
	H =< A,
	max(T,A,Max).
max([],A,A).

%example04
accMax([H|T],A,Max):-
	H > A,
	max(T,H,Max).
accMax([H|T],A,Max):-
	H =< A,
	max(T,A,Max).
accMax([],A,A).
max(List,Max):-
	List = [H|_],
	accMax(List,H,Max).
	