jarosz(ola).
jarosz(ewa).
jarosz(janek).
jarosz(pawel).

nie-palacy(ola).
nie-palacy(ewa).
nie-palacy(janek).

czyta(ola).
czyta(iza).
czyta(piotr).

sport(ola).
sport(janek).
sport(piotr).
sport(pawel).

lubi(ola, X) :- jarosz(X), sport(X).
lubi(ewa, X) :- jarosz(X), nie-palacy(X).
lubi(iza, X) :- sport(X), nie-palacy(X).
lubi(ola, X) :- czyta(X).
lubi(ola, X) :- jarosz(X), sport(X).
lubi(janek, X) :- sport(X).
lubi(piotr, X) :- sport(X), jarosz(X).
lubi(piotr, X) :- czyta(X).
lubi(pawel, X) :- jarosz(X), sport(X), czyta(X).


/*


Zadanie 4
Znajdz przujaciol w grupie osob o nastepujacych upodobaniach
1 ola lub jaroszy, ktorzy dodatkowo uprawiaja sport
2 ewa lubi spedzac czas wsrod niepalacych jaroszy
3 iza preferuje milosnikow ksizake lub wktywnych sportowo wrogow tytoniu
4 janek najlepiej czuje sie wsrod uprawiajacych sport
5 piotr moze sie zaprzyjaznic z uprawiajacymi sport jaroszami albo z zapalonymi czytelnikami ksiazek
6 pawel wymaga od przyjaciea by byl jaroszem, uprawial sport i lubil czytac ksiazki

jesli ola, ewa, jan i pawel sa jaroszami, ola, ewa i jan nie pala papierosow, ola, iza i piotr czytaja ksiazki, a ola, jan, piotr i pawl uprawiaja sport

jarosz(X) - spelniony, gdy X jest jaroszem
nie palacy(X) - spelniony, gdy X nie pali papierosow
czyta(X) - spelniony, gdy X czyta ksiazki
sport(X)- spelniony, gdy X lubi uprawiac sport
lubi(X, Y) - spelniony, gdy X lubi Y

kogo lubi ola
?-lubi(ola, X), X\==ola.
ola:
jan, pawel

czy jan kogos lubi
?-lubi(jan, _).

kto lubi niepalacych i uprawiajacych sport
?-nie-palacy(X), sport(X).
ola

?-lubi_czyta(X), jarosz(X).

kto lubi siebie nawzajem
?-lubi(X, Y), lubi(Y, X), X\==Y.
X = ola,
Y = janek 




klauzule:
definicje relacji:
fakty:
reguly:

; dla kolejnej linii
*/