%listy
%[].
%[a,b,23,ALS,d].
%[1,2,3,[2,3,4,5]].
%Zadanie 1
%

pisz([]).
pisz([X|Y]):-
    write(X), write(' '), pisz(Y).

nalezy(X,[X|_]).
nalezy(X, [_|Yogon]):-
       nalezy(X,Yogon).

dlugosc([],0).
dlugosc([_|Y],L) :-
    dlugosc(Y,X),
    L is X+1.

lacz([],A,A).
lacz([X|Y],Lista,[X|Wynik]):-
    lacz(Y,Lista,Wynik).

%[1,23], [a,b] = 1|X
%[23], [a,b] = 23|X

dodaj(E, Lista, NowaLista):-
    NowaLista = [E|Lista].

usun(X, [X|T], T).
usun(X, [H|T], [H,Wynik]):-
     usun(X,T,Wynik).
