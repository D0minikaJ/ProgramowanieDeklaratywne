matka(maria, pawel).
ojciec(karol, pawel).
matka(magda, ela).
ojciec(piotr, ela).

rodzice(X, Y, Z):-matka(X, Z), ojciec(Y, Z).
rodzice(X, Y, Z):-matka(Y, Z), ojciec(X, Z).

rodzice(X, Y, marcin):-rodzice(X, Y, ela).

/*
matka(X, Y) - spe�niony gdy X jest matk� Y
ojciec(X, Y) - spe�niony gdy X jest ojcem Y
rodzice(X, Y, Z) - spe�niony, gdy X i Y s� rodzicami Z

klauzule:
definicje relacji:
fakty:
reguly:
*/