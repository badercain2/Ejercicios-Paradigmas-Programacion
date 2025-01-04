producto _ 0 = 0
producto 0 _ = 0
producto a b = a + producto a (b -1)


factorial 0 = 1
factorial x = x * factorial (x -1)


suma3 :: (Eq a1, Num a1, Num a2) => a1 -> a2 -> a2 -> a2
suma3 x y z
  | x == 1 = y + z
  | otherwise = y - z

myHead (x : _) = x
myHead [] = []

myTail (_ : xs) = xs
myTail [] = []

myLast (x : xs) =
  if null xs
    then x
    else myLast xs
myLast [] = []

myLast' [] = []
myLast' [x] = x
myLast' (x : xs) = myLast' xs

primeros (x : xs) (y : ys) = (x, y) : primeros xs ys
primeros [] [] = []
primeros xs [] = []
primeros [] xy = []

primo n = null [x | x <- [2 .. (n -1)], mod n x == 0]

cuadrado n = n * n

doble x = x * 2


producto 0 _ = 0
producto _ 0 = 0
producto n m = n + producto n (m -1)

cociente _ 0 = 0
cociente 0 _ = 0
cociente n m
  | n > 0 = 1 + cociente (n - m) m
  | otherwise = -1

resto _ 0 = 0
resto 0 _ = 0
resto n m
  | n > 0 = resto (n - m) m
  | n < 0 = 1 + resto (n + 1) m
  | n == 0 = 0

facto 1 = 1
facto 0 = 1
facto n = n * facto (n -1)

sumatoria 0 = 0
sumatoria n = n + sumatoria (n -1)

potencia _ 0 = 1
potencia 0 _ = 0
potencia n m = n * potencia n (m -1)

combinatorio n m = facto n / (facto (n - m) * facto m)

sumatoria' 1 = 4
sumatoria' n = (3 * n + 1) + sumatoria' (n -1)

sumatoria'' 1 = 2
sumatoria'' n = (3 * n - 1) + sumatoria'' (n -1)

fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n -1) + fibonacci (n -2)

longitud [] = 0
longitud (x : xs) = 1 + longitud xs

sum3 [] = 0
sum3 (x : xs)
  | x < 3 = x + sum3 xs
  | otherwise = sum3 xs

pari n xs
  | n < 0 || n >= length xs = error "incide fuera de rango"
  | otherwise = mod (xs !! n) 2 == 0

conCola (x : xs) = xs

reversa [] = []
reversa (x : xs) = reversa (xs) ++ [x]

cantA [] = 0
cantA (x : xs)
  | x == 'a' = 1 + cantA (xs)
  | otherwise = cantA (xs)

opcion _ [] = []
opcion n (x : xs)
  | n == 1 = 2 * x : opcion 1 xs
  | n == 2 = x : opcion 2 xs



  lista _ [] = False
lista n (x : xs)
  | n == x = True
  | otherwise = lista n xs

conca [] [] = []
conca [] (y : ys) = y : conca [] ys
conca (x : xs) (y : ys) = x : conca xs (y : ys)

palindromo (x : xs)
  | (x : xs) == reverse (x : xs) = True
  | otherwise = False

blancos (x : xs)
  | x == ' ' = []
  | otherwise = x : blancos xs

blancos' (x : xs)
  | x == ' ' = blancos' xs
  | otherwise = blancos (x : xs)

contPal [] = 1
contPal (x : xs)
  | x == ' ' = 1 + contPal xs
  | otherwise = contPal xs

tresElem n =
  [ (i, j, k)
    | i <- [1 .. n],
      mod i 2 == 0,
      j <- [1 .. n],
      mod j 3 == 0,
      k <- [1 .. n],
      k == j * i,
      mod (i + j) 5 == 0
  ]

identidad = [(x, y) | x <- [0 .. 10], y <- [0 .. 10], x > y]