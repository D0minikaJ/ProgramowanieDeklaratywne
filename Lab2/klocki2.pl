% na(x, y)
% opis: spe³niony, gdy klocek x le¿y
% klockami Y i Z
% -----------------------------------------------na/2
	na(c, a),
	na(c, b),
	na(d, c),
	pod(X, Y):-na(Y, Z),
	miêdzy(X, Y, Z):- na(Z, X), na(X, Y),
	miêdzy(X, Y, Z):- na(Y, X), na(X, Z).
%------------------------------------------------na/2
/*
? - miêdzy(c, X, Y).
? - miêdzy(a, _, _).
*/