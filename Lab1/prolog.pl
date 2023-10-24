lubi(ala, koty).
lubi(marek, psy).
lubi(janina, owoce).
lubi(franek, rower).
lubi(ala, tomka).
lubi(jan, koty).
lubi(alina, koty).

cenne(zloto).

kobieta(ala).
kobieta(maria).
kobieta(ewelina).

mezczyzna(jan).
mezczyzna(tomek).
mezczyzna(zbigniew).
mezczyzna(marek).

daje(jan, gazeta, maria).

kogoLubi(ala, X):-
    lubi(X, koty).

kogoLubi1(ala, X):-
    lubi(X,psy),
    mezczyzna(X).

