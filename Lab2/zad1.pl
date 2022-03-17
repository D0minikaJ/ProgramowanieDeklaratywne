%PROGRAM: klocki1
%Baza wiedzy o uk³adzie klocków
%Definiowane predykaty:
%na/2
%=======================

%na(X, Y)
%opis: spe³niony, gdy klocek x le¿y
%bezpoœredno na klocku Y
%--------------------------------------na/2
	na(c,a),
	na(c, b),
	na(d,c).
%--------------------------------------na/2

/*
Informacje o budowie programu
Program sk³ada siê z 3 klauuzul
Program zawiera 1 definicjê relacji
Jest to relacja na/2
Definija reladcja na/2 sklada sie z 3 klauzul, ktore sa faktami
*/

/*
Sesja prologowa

1. Czy klocek d le¿y na klocku c?
? - na(d,c).
true.

2. Czy klocek c le¿y na klocku a?
 na(c,a).
true :
false.

3. Czy klocek b le¿y na klocku d?
? - na(b, c).

4. Jaki klocek le¿y na klocku c?
? - na(d,c).
X = d

5. Jaki klocek le¿y klocek c?
? - na(c, X).
X = a :
X = b.

6. Para klocków (X, Y), taka ¿e X le¿y na Y?
? - na(X, Y).
X  = c.
Y = a :
X = c.
Y = b :
X = d.
Y = c.

7. Czy jakiœ klocek le¿y na c?
? - na(_, c).
true.

8. Czy jakiœ klocek le¿y pod klockiem c?
? - na(c,_).
true :
pod(X, Y) :- na(Y, X).

dla A:
? - pod(a, X).

9. Miêdzy jakimi klockami le¿y klocek c?
miêdzy(X, Y, Z) - klocek X le¿y
pomiêdzy klockami Y i Z

10. Jaki klocek le¿y miêdzy dwoma innymi klockami?
miêdzy(X, Y, Z) :- na (Y, X), na(X, Z)
miêdzy(X, Y, Z) :- na (Z, X), na (X, Y)

 |d|
 |c|
|a|b|
*/
