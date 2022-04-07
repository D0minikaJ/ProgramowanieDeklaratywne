/*
dodatni(X):
spelniony gdy X  jest liczba dodatnia
*/

dodatni(X):-X>0.

/*
lista dodatnia(L):
spelniony gdy wszystkie elementy listy sa dodatnie
*/

lista_dodatnia(L):-maplist(dodatni, L).


/*
Czy wszystkie elem listy 123 sa dodatnie
?-lista_dodatnia([1,2,3]).

Czy wszystkie elem listy -1,2,3 sa dodatnie?
?-lista_dodatnia([-1,2,3]).
*/

/*
Napisz program:
kwadrat_listy(L1, L2) - spelniony gdy elem listy L2 sa kwadratami listy L1
*/


kwadrat(X, Y):-Y is X**2.
kwadrat_listy(L1,L2):-maplist(kwadrat, L1, L2).

/*
czy lista [4,16] jest kwadratem listy [2,4]?
?-kwadrat_listy([2,4], [4,16]).

co jest kwadratem 1,2,5?
?-kwadrat_listy([1,2,5], X).

Napisz program: 
wszystkie elem listy L sa wieksze od X
Y>X
jezeli y jest wiekszy od x to zachodzi bla bla bla


wiekszy_od(X,Y).
spelniony gfy Y jest wieksze od X
*/
wiekszy_od(X,Y):-Y>X.

/*
wiekszy_od_lista(+X, +L).
spelniony gdy wysztkie elementy listy L sa wieksze od X
*/

wiekszy_od_lista(X, L):-maplist(wiekszy_od(X),L).

/*
Czy lista 2,3 jest wieksza od 1?
?-wiekszy_od_listy(1, [2,3]).

Czy elem listy 0,2,5 sa wieksza od 1?
?-wiekszy_od_listy(1,[0,2,5]).

Napisz program:
wieksza_lista(L1, L2) - spelniony gdy elem listy L1 sa wieksze od elem listy L2
*/

wieksza_lista(L1, L2):-maplist(wiekszy_od, L2, L1).

/*
Czy 5,3 jest wieksza od 2,0?
?-wieksza_lista([5,3],[2,0]).

Czy 2,1 jest wieksze od 1,3
?-wieksza_lista([2,1],[1,3]).

Napisz program: 
lista_wieksza_o5(L1, l2) - spelniony gdy elem listy L2 sa odpowiednio wieksze o5
*/

wiekszy_o5(X,Y):-Y is X+5.

lista_wieksza_o5(L1,L2):-maplist(wiekszy_o5, L1, L2).


/*
Czy lista 2, 5 wieksza o 5 jest 7,8?
lista_wieksza_o5([2,3], [7,8]).

Lista jaka lista jest wieksza od listy 4,6?
lista_wieksza_o5([4,6],X).

czy lista wieksza o5 0,3 jest 5,6?


wypisz(X)
spelniony gdy X zostanie wypisany na br. I/0.
a nastepnie nowa linia

Kolo
lista - 2 zad
definicja rekurencyjna - 1zad
prosty program - 1zad
*/




wypisz:-write(X), nl.

/*
wypisz_lista(L)
*/

wypisz_lista(L):-maplist(wypisz, L).

