--compare-funkacja porownujaca 2 argumenty
compare::Ord a=>a->a->Ordering
compare a b
 |a>b =GT
 |a==b =EQ
 |otherwise =LT

{--
^Zadefiniuj funkcje jednoargumentowa sprawdz(x) o wartosci typu String, ktora dla X 

ujemnych podaje w wyniku napis "liczba mniejsza od 0" dla xe<0;10> - "liczba z 

przedzialu od 0 do 10"
dla x>10 - "liczba wieksza od 10". Uzyj definicji warunkowej ze straznikami staraj 

sie zastosowac mozeliwie najmniejsza liczbe wynikow.

" " - [[Char]]
' ' - [Char]

--}

sprawdz::Integer -> String
sprawdz x
 | x<0 = "liczba mniejsza od 0"
 | x>10 = "liczba wieksza od 10"
 | otherwise = "liczba z przedzialu od 0 do 10"


--funkcja albo_albo (dopasowanie do wzorca)
albo_albo1::(Bool, Bool)->Bool
albo_albo1 (p, q)=case (p,q) of (True, True)->False
				(True, False)->True
				(False, True)->True
				(False, False)->False

albo_albo2::Bool->Bool->Bool
albo_albo2 x y = if x==y then False else True 

albo_albo3::Bool->Bool->Bool
albo_albo3 x y
 |x == y = False
 |otherwise = True
