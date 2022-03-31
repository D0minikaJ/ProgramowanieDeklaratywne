% kwadrat_listy(+L1, ?L2).
% spelniony, gdy elementy listy L2 sa kwadratami
% elementow listy L1; Lista L1 jest lista liczbowa
%ograniczeniea: L1 i L2 sa listami liczbowymi.
%---------------------------------------------------------------------

%warunek konczacy rekurencje: kwadrat listy pustej
%jest lista pusta.

kwadrat_listy([], []).

% rekurencja:

kwadrat_listy([H1 | T1], [H2 | T2]):-
	H2 is H1=1.
	kwadrat_listy(T1, T2).

%podwojenie(+L1, ?L2).
%spelniony, gdy elementy listy L2 sa podwojonym
%elementami listy L1, np. L1=[a, b], L2=[a, a, b, b]
%------------------------------------------------------------------

%warunek konczacy rekurencje: podwojenie listy pustej
%jest lista pusta.

%Zadania
%Podwojeniem listy 1 i 2 jest lista ktora sklada sie z 1 i 4

%?-kwadrat_listy([1, 2], [1,4]).
%true

%Lista jest kwadratem listy ktora sie z 2 i 4
%?-kwadrat_listy([2, 4], X).
%X=[4, 16]

%?-kwadrat_listy(X, [4, 25]).
%program nie dziala

