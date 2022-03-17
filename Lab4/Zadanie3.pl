na(d, c).
na(c, a).
na(c, b).
na(a, e).
na(b, g).
nad(X, Y):-na(X, Y).
nad(X, Y):-na(X, Z), nad(Z, Y).

/*
na(X, Y) - klocek X le¿y bezpoœrednio na klocku Y
nad(X, Y) - klocek X le¿y nad klockiem Y.

  |d|
  |c|
|a|b|
|e|g|

Czy klocek c le¿y nad klockiem e?

?-nad(c, e).

Nad jakim klockiem le¿y klocek d?

?-nad(d, X).

Jaki klocek le¿y nad klockiem a?

?-nad(X, a).

Czy klocek C le¿y nad jakimœ klockiem?

?-nad(c,_).

Czy klo
*/