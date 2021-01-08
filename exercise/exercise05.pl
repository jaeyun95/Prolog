%example01 
%rappend
append([],L,L).
append([H|T],L2,[H|L3]):-append(T,L2,L3).

%example02
%prefix
prefix(P,L):-append(P,_,L).

%exampel03
%suffix(S,L):-append(_,S,L).