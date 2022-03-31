/*
podwojenie(+l1, ?L2).
spelniony gdy elementy listy L2 sa podwjonomy
elementami lsity L1, mp. L1=[a, b], l2=[a,a,b,b]
------------------------------------------------------------------

warunek konczacy rekurencje: podwojenie listy pustej
jest lista pusta
*/

podwojenie([], []).


%rekurencja:


podwojenie([H1|T1], [H1, H1|T2]):-
		podwojenie(T1, T2).

/*
Czy podwojeniem L1 jest podwojenie L2
?-podwojenie([a, a], [a, a, b, b]).
true

?-podwojenie([1,2,3], X).
X = [1, 1, 2, 2, 3, 3].

Lista wieksza o 2(L1, L2) - spelniony gdy elementy listy L2 sa odpowiednimi elementami listy L1, powiekszonymi o 2
np. [1, 3] [3, 5]
*/


lista_wieksza_o2([], []).
lista_wieksza_o2([X|T1], [Y|T2]):-
		Y is X+2, lista_wieksza_o2(T1, T2).

/*
?- lista_wieksza_o2([1, 3], [3, 5]).
true.

jaka lista jest od 2, 4, 5
?- lista_wieksza_o2([2, 4, 5], X).
X = [4, 6, 7].
*/

/*
lista_elem(L, N).
spelniony, gdy N jest liczba elementow listy L.
[1, 2] N=2
*/

lista_elem([], 0).
lista_elem([X|T], N):-
	lista_elem(T, K), N is K+1.

/*
Czy liczba elementow takiej listy jest 2
?-lista_elem([1, 2], 2).


?-lista_elem([], N).
N=0.

?-lista_elem([2, 3, 4], X).
*/

/*
konkat(L1, L2, L3).
spelniony gdy lista L3 jest polaczeniem listy L1 i L2
------------------------------------------------------------------------------
	

rekurencja ze wzgledu na liste L1:
warunek konczacy rekurencje: polaczenie listy
pustej z lista L daje liste L
*/
	konkat([], L, L).

/*
rekurencja:
glowa listy L3 jest glowa listy L1
ogon listy L3 jest polaczeniem ogona listy L1 z lista L2
*/
	konkat([H1|T1], L2,[H1|T3]):-
		konkat(T1, L2, T3).
/*
L1=[1, 2] L2=[2, 1]
czy L3 = [1, 2, 2, 1] to konkat L1 i L2

?- konkat([1, 2], [2, 1], [1, 2, 2, 1]).
true.

?- konkat([], [2,4], X).
X = [2, 4].

?- konkat([a,b], [c,d,e], X).
X = [a, b, c, d, e].

Prefiks listy:
?-konkat(X, _, [a, b, c]).
X = [] ;
X = [a] ;
X = [a, b] ;
X = [a, b, c] ;
false.
*/