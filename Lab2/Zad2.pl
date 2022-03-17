lubi(jan, tatry).
lubi(jan, beskidy).
lubi(jerzy, beskidy).
lubi(jerzy, bieszczady).
lubi(adam, sudety).
lubi(justyna, bieszczady).
bratnia_dusza(X, Y):-lubi(X, G),lubi(Y, G),X\==Y.

/*
lubi/2
lubi(X, Y) - spe³niony, gdy X lubi Y.
bratnia_dusza/2
bratnia_dusza(X, Y) - X jest bratni¹ dusz¹ Y.
program sk³ada siê z 7 klauzul
2 definicje relacji (lubi, bratnia dusza)
6 faktów
reguly (?)

B)
1. Czy Jerzy lubi Sudety?
? - lubi(jerzy, sudety).
false

2. Jakie góry lubi Jan?
? - lubi(Jan,X).
X = tatry
X = beskidy

3.  Kto lubi bieszczady?
? - lubi(X, bieszczady) 
X = jerzy;
X = justyna

4. Czy jan ma bratnia dusze?
? - bratnia_dusza(jan,_).
true

5. Kto jest bratni¹ dusz¹ Justyny?
? - bratnia_dusza(justyna, X).
x= jerzy.

6. jakie pary sa bratnia dusza
? - bratnia_dusza(X, Y).
X = jan,
Y = jerzy ;
X = jerzy,
Y = jan ;
X = jerzy,
Y = justyna ;
X = justyna,
Y = jerzy ;


*/