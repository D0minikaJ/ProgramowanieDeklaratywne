% na(x, y)
% opis: spe�niony, gdy klocek x le�y
% klockami Y i Z
% -----------------------------------------------na/2
	na(c, a),
	na(c, b),
	na(d, c),
	pod(X, Y):-na(Y, Z),
	mi�dzy(X, Y, Z):- na(Z, X), na(X, Y),
	mi�dzy(X, Y, Z):- na(Y, X), na(X, Z).
%------------------------------------------------na/2
/*
? - mi�dzy(c, X, Y).
? - mi�dzy(a, _, _).
*/