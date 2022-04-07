/*
2 zad z list
1 na uzgadnianie
1 

kol na kartce
*/

konkat([], L, L).
konkt([H1|T1], L2, [H1|T3]):-konkat(T1, L2, T3).

/*
odwrotna_lista(L1, l2)-spelniony, gdy lista L2 jest dodwroceniem listy L1
warunek konczy rekurencje
*/

odwrotna_lista([], []).

/*
rekurencja
UWAGA: KONKAT JEST POTRZEBNY W PLIKU
*/


odwrotna_lista([H|T1], L):-odwrotna_lista(T1, T2), konkat(T2, [H], L).

/*
Czy odwrocnie 123 bedzie 321
?-odwrotna_lista([1,2,3],[3,2,1]).

Co jest odwrotnoscia abc?
?-odwrotna_lista([a,b,c],X).

jaka lista jest odwrotna do pustej listy?
?-odwrotna_lista([], X).
*/