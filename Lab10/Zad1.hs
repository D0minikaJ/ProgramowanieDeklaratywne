--Stala 5
--rozmiar :: Integer --Haskell
rozmiar = 5

---f(x)=2*x
--razy_daw : Num a=> a -> a
razy_dwa x = 2*x

--g(x)=x*x
--kwadrat :: Num a => a -> a --Haskell
--kwadrat :: Integer -> Integer --moj typ
kwadrat x = x*x

--h(x, y)=x^2+y^2
--sum_kw :: Num a => a -> a --Haskell
sum_kw x y = kwadrat x
	+ kwadrat y

--k(x, y)=>x>y
pierwszy_wk :: Ord a => a -> a -> Bool
pierwszy_wk x y = x > y

--i(x, y) = (x-y, x+y)


--pole_kolo(r)

-- 1) bez definicji:
--pole_kola1 r = 2*pi*r^2

-- 2) z wyrazeniem where:
--pole_kola2 r = pi * r_square
--	where r_square = r^2

-- 3) wyrazenie let in:
--pole_kola3 r = let r_square = r^2
--	in pi*r_square


--abs::Float->Float
--abs x=if x<0 then (-x) else x

--abs2 
--|x<0 = (-x)
-- |otherwise = x

-- min dwuargumentowa
min1 :: Integer -> Integer -> Integer
min1 x  y = if x<y then x else y
-- min 2 3 = 2

-- min 4 1 = 1
