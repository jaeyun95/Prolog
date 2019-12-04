%example01
f(a).
f(b).
g(a).
g(b).
h(b).
k(X) :- f(X), g(X), h(X).

%example02
child(anne,bridget).
child(bridget,caroline).
child(caroline,donna).
child(donna,emily).
descend(X,Y) :- child(X,Y).
descend(X,Y) :- child(X,Z),child(Z,Y).

%example03
descend(X,Y) :- child(X,Y).
descend(X,Y) :- child(X,Z),descend(Z,Y).