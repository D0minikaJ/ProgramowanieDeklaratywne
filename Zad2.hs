--if then else

min1 :: Integer -> Integer -> Integer
min1 x  y = if x<y then x else y
{-
	{ 1 dla x > 0
sgn(x)=    { 0 dla x = 0
	{ -1 dla x < 0
-}

signum::Integer -> Integer

signum x = if x > 0 then 1 else if x==0  then 0 else (-1) 


abs::Float->Float
abs x=if x<0 then (-x) else x

--straznicy

abs2 x
 |x<0 = (-x)
 |otherwise =x

min::Integer->Integer->Integer
min x y
 |x>y = y
 |otherwise = x

sgn::Integer -> Integer
sgn x
 |x>0 = 1
 |x<0 = (-1)
 |otherwise = 0

{-
         { 2 dla x<1
f(x)= { 0 dla 1 <= x <=2
         { 3 dla x>2
-}

fun::Integer -> Integer

fun x
 | x<1=2
 | x>=1 && x <= 2 = 0
 |x>2 = 3

fun2 x
 |x<1 = 2
 |x>2 = 3
 |otherwise = 0