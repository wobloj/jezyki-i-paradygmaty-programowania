poleKwadratu(0):-
    write('Pole jest r�wne 0').

poleKwadratu(X):-
    Wyn is X*X,
    write('Wynik to: '),write(Wyn).

poleKo�a(0):-
    write(0).

poleKo�a(R):-
    Wyn is (pi * R*R),
    write(Wyn).

srednia(A,B):-
    Wyn is (A+B)/2,
    write(Wyn).

dzienTygodnia(poniedzialek).
dzienTygodnia(wtorek).
dzienTygodnia(sroda).
dzienTygodnia(czwartek).
dzienTygodnia(piatek).
dzienTygodnia(sobota).
dzienTygodnia(niedziela).

lewK�amie(Dzien):-
    dzienTygodnia(Dzien),
    (Dzien = poniedzialek; Dzien = wtorek; Dzien= sroda).

nosorozecK�amie(Dzien):-
    dzienTygodnia(Dzien),
    (Dzien = czwartek; Dzien = piatek; Dzien= sobota).

wczorajszyDzien(Dzien):-
    \+lewK�amie(Dzien),
    nosorozecK�amie(Dzien).


