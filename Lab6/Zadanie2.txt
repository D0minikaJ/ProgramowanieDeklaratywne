/*
Rozpoznawanie wielomianow jednej zmiennej o wspolczynnikach liczbowych

1) X jest wielomianem zmiennej X
   C - liczba jest wielomianem zmiennej
2) jezeli W, W1, W2 sa wielomianem zmiennej X to
     -W, W1+W2, W-1,W2, W1*W2, W^N (N-liczba naturalna)
     sa wielomianami zmiennej X

wielomian (W, X)
spelniony gdy w jest wielomianem zmiennej X o wspolczynnikach liczbowych

definicja rekurancyjna

 warunki zakonczenia rekurencji
	wielomian (X, X).
	wielomian (C, _):-number(C).

rekurencja

*/

wielomian(-W, X):-wielomian(W, X).
wielomian(W1+W2, X):-wielomian(W1, X), wielomian(W2, X).
wielomian(W1-W2, X):-wielomian (W1, X), wielomian (W2, X).
wielomian(W1*W2, X):-wielomian (W1, X), wielomian (W2, X).
wielomian(W^N), X:-integer(N), N>1, wielomian(W, X).

/*
Czy Y jest wielomianem zmiennej Y?
?-wielomian(y, y).

Czy 3 jest wielomianem zmiennej x?
?-wielomian(3, x).

Czy 2x+1 jest wielomianem zmiennej x?
?-wielomian(2*x+1, x)

Czy 3*x^2 jest wielomianem zmiennej x?
?-wielomian(3*x^2, x).

Czy x^-3 jest wielomianem zmiennej x?
?-wielomian(x^(-3), x).

*/
