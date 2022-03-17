matka(maria, pawel).
ojciec(karol, pawel).
matka(magda, ela).
ojciec(piotr, ela).

rodzice(X, Y, Z):-matka(X, Z), ojciec(Y, Z).
rodzice(X, Y, Z):-matka(Y, Z), ojciec(X, Z).

rodzice(X, Y, marcin):-rodzice(X, Y, ela).

/*
matka(X, Y) - spe³niony gdy X jest matk¹ Y
ojciec(X, Y) - spe³niony gdy X jest ojcem Y
rodzice(X, Y, Z) - spe³niony, gdy X i Y s¹ rodzicami Z

klauzule:
definicje relacji:
fakty:
reguly:
*/