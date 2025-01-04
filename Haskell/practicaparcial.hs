producto :: Int-> Int  -> Int 
producto _ 0 = 0
producto x y = x + producto x (y-1)

cociente :: Int -> Int -> Int
cociente _ 0 = error "no se puede multiplicar por cero"
cociente num den | num <1 = 0
                 | otherwise = 1 + cociente (num - den) den


fact :: Int -> Int
fact 0 = 1
fact n = n * fact (n-1)

potencia :: Int -> Int -> Int
potencia _ 0 = 1
potencia x y = x * potencia x (y-1)


{-par-}
par :: Int -> Bool
par 0 = True
par 1 = False
par n = par (n-2)

{-impar-}
impar :: Int -> Bool
impar 0 = False
impar 1 = True
impar n = impar (n-2)

longitud :: [a] -> Int
longitud [] = 0
longitud (x:xs) = 1 + longitud xs



eliminarElemento :: Eq a => a -> [a] ->[a]
eliminarElemento _ [] = [] {-caso base de 2 parametros-}
eliminarElemento n (x:xs) | n == x = eliminarElemento n xs {-no lo copio-}
                          | otherwise = x: eliminarElemento n xs 

prim :: Int -> Bool
prim n = null [x | x <- [2 .. (n-1)] , mod n x == 0]




crearTupla :: [a] -> [b] -> [(a, b)]
crearTupla [] _ = []                     -- Caso base: si la primera lista está vacía, devolvemos una lista vacía.
crearTupla _ [] = []                     -- Caso base: si la segunda lista está vacía, devolvemos una lista vacía.
crearTupla (x:xs) (y:ys) = (x, y) : crearTupla xs ys -- Tomamos el primer elemento de ambas listas y llamamos recursivamente con el resto.
