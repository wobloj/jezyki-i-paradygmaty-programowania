dodaj(A,B,C):-
    C is A+B,
    write('Wynik: ' ), write(C), nl.

silnia(0,1).
silnia(N,Wynik):-
    N > 0,
    NewN is N-1,
    silnia(NewN, NewWynik),
    Wynik is N * NewWynik.

warunek(X):-
    ( X > 0 ->
      write('liczba dodatnia');
      write('liczba ujemna')
    ).

main :-
    write('podaj liczbe'), read(N),silnia(N).

fib(0,0).
fib(1,1).

fib(N, Wynik):-
    N > 1,    NewN1 is N-1,
    NewN2 is N-2,
    fib(NewN1, Wyn1),
    fib(NewN2, Wyn2),
    Wynik is Wyn1 + Wyn2.

%podaj a i n
%spr czy n > 0 to wywolaj regule potega
%blad to komunikat o bledzie.

%potega(A, N, Wyn) :-
%    write('Podaj A: '), read(A),
%    write('Podaj N: '), read(N),
%    N > 0,
%    Wyn is A ** N,
%    write(Wyn);
%    write('Blad').

zadanie:-
    write('Podaj A = '), read(A),
    write('Podaj N = '), read(N),
    (N >= 0 ->
       potegaRek(A,N,1,Wynik),
       write('Wynik = '), write(Wynik);
       write('Blad')
    ).


potegaRek(_,0,X,X).
potegaRek(A,N,X,Wynik):-
    N > 0,
    NoweX is X * A,
    NoweN is N - 1,
    potegaRek(A,NoweN, NoweX, Wynik).






