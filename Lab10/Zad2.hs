{--

Grupa 2 Wyznacz wartosci nastepujacych wyrazen krok po kroku przestrzegajac kolejnosci wykonywanych operacji:

1

(head[2,3,5]:[5,6,[7,8]])!!3
(2:[5,6,[7,8]])!!3
[2,5,6[7,8]]!!3
[7,8]

2

1:(tail[2,3,7]++reverse[3,4,6])
1:([3, 7]++[6,4,3])
1:([3, 7,6,4,3])
[1, 3, 7, 6, 4, 3]

--}