%example01 
%rappend
append([],L,L).
append([H|T],L2,[H|L3]):-append(T,L2,L3).

%example02
%prefix
prefix(P,L):-append(P,_,L).

%exampel03
%suffix
suffix(S,L):-append(_,S,L).

%example04
%sublist
sublist(SubL,L):-suffix(S,L),prefix(SubL,S).

%example05
%naiverev
naiverev([],[]).
naiverev([H|T],R):-naiverev(T,RevT),append(RevT,[H],R).

%accRev
accRev([H|T],A,R):-accRev(T,[H|A],R).
accRev([],A,A).