na(d, c).
na(c, a).
na(c, b).
na(a, e).
na(b, g).
nad(X, Y):-na(X, Y).
nad(X, Y):-na(X, Z), nad(Z, Y).

/*
na(X, Y) - klocek X le퓓 bezpo쐒ednio na klocku Y
nad(X, Y) - klocek X le퓓 nad klockiem Y.

  |d|
  |c|
|a|b|
|e|g|

Czy klocek c le퓓 nad klockiem e?

?-nad(c, e).

Nad jakim klockiem le퓓 klocek d?

?-nad(d, X).

Jaki klocek le퓓 nad klockiem a?

?-nad(X, a).
*/