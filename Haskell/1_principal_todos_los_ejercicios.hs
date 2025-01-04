{-Lista de ejercicios hechos en clase-}


{-SEGUNDO ELEMENTO-}
segundoElemento :: Int -> Int -> Int
segundoElemento _ y = y


{-sumarEntero x = x . Esto no funciona porque le dije que le voy a pasar 2 elementos-}

sumarEnteros :: Int -> Int -> Int
sumarEnteros x y = x + y



restarEnteros :: Int -> Int -> Int
restarEnteros x y = x - y

{-el orden es importante, si ponemos el multiplicar x 0 = x . al final me tira error-}
multiplicar :: Int -> Int -> Int
multiplicar _ 0 = 0
multiplicar 0 _ = 0
multiplicar x y = x * y 


sumarAlgo :: Int -> Int -> Int
sumarAlgo x y = x + 4


{-tuplas-}
sumarTuplas :: (Int,Int) -> Int
sumarTuplas (x,y) = x + y 


meterTuplas :: Int -> Int -> (Int, Int)
meterTuplas x y = (x , y)

{-combinar tuplas-}



{-clase: Longitud de una lista-}
{-Caso base va arriba, recursivo abajo-}

{- por comprension
[1..10] se puede .   [5..1] no se puede -}

longitud :: [a] -> Int
longitud [] = 0
longitud (_:xs) = 1 + longitud xs


{-Lista de solo elementos de string-}
{-longitudS ["b","a"], se debe cargar asi -}

longitudS :: [String] -> Int
longitudS [] = 0
longitudS (_:xs) = 1 + longitudS xs

{-tail [1,4,2,4]. Existe el mensaje directo en el terminal-}
{-me devuelve una lista-}
{-devolverCola "hola". esto me devuelve. "ola" . Tambien funciona con Strings-}
devolverCola:: [a] -> [a] 
devolverCola []  =  error "La lista está vacía"
devolverCola (_:xs) = xs


{-devolver el ultimo elemento- aca se devuelve [] cuando lista vacia-}
{-(_:xs) significa que no importa el primer elemento pasale cualquier cosa-}
{-ultimoElemento [] = [] si hago esto en el primero lo detecta como error 
porque dice que voy a devolver un elemeto-}

ultimoElemento :: [a] -> a 
ultimoElemento [] = error "error la lista esta vacia"
ultimoElemento [x] = x  {-cuando la lista tenga su ultimo elemento devuelve ese-}
ultimoElemento (_:xs) = ultimoElemento xs

ultimoElementoDevuelveLista :: [a] -> [a] 
ultimoElementoDevuelveLista [] = [] {-si la lista esta vacia devuelve vacio,tambien Caso base podria ser -}
ultimoElementoDevuelveLista [x] = [x]  {-caso base, cuando la lista tenga su ultimo elemento devuelve ese-}
ultimoElementoDevuelveLista (_:xs) = ultimoElementoDevuelveLista xs


{-devolver el primer elemento-}
primerElemento :: [a] -> a
primerElemento (x:xs) = x 


{-el "_" significa cualquier cosa. es como que no lo considera porque no es importante-}

{-posicionElemento hacer este-}

{-Eq a me permite comparar ese algo, despues el a del elemento que se me pasa y luego el arreglo-}
{- le estoy pidiendo 2 elementos -}
{-si te falta algo no entra, considerar esto los patrones-}

posicionElemento :: Eq a => a ->  [a] -> Int 
posicionElemento _ [] = error "lista vacia"
posicionElemento n (x:xs) | x == n = 1
                          | otherwise = 1 + posicionElemento n xs  

{-devolver mismo arreglo-}
mismoArreglo :: [a] -> [a]
mismoArreglo (x:xs) = (x:xs)

mismoArreglo' :: [a] -> [a]
mismoArreglo' [] = [] {-caso base-}
mismoArreglo' (x:xs) = x: mismoArreglo xs {-cabeza concatenado con cola-}

{-multiplicarElemento. aca se usa : -}
{-ASI SE "CONTATENA" LA CABEZA CON LA COLA-}
{-multiplicarElemento [x] = [x] , quite esta linea. Cuando queda 1 elemento devuelve ese-}
multiplicarElemento :: [Int] -> [Int]
multiplicarElemento [] = [] {- caso base. cuando la cola este vacia devuelve vacio,-}
multiplicarElemento (x:xs) = (x * 2) : multiplicarElemento xs
{-ASI SE "CONTATENA" LA CABEZA CON LA COLA-}

potenciaElemento :: [Int] ->[Int]
potenciaElemento [] = [] {-Caso base-}
potenciaElemento (x:xs) = (x * x) : potenciaElemento xs
{-Agarro la cabeza x y hago algo y luego concateno: funcion recursiva y cola  -}


potenciaDadaElemento :: Int -> [Int] -> [Int]
potenciaDadaElemento _ [] = [] {-Caso base, ya contempla si pasan lista vacia-}
potenciaDadaElemento n (x:xs) = (x ^ n) : potenciaDadaElemento n xs 



{-eliminar un elemento-}


eliminarElemento :: Eq a => a -> [a] ->[a]
eliminarElemento _ [] = [] {-caso base de 2 parametros-}
eliminarElemento n (x:xs) | n == x = eliminarElemento n xs {-no lo copio-}
                          | otherwise = x: eliminarElemento n xs 



{-agregar un elemento cabeza-}
agregarElementoCabeza :: a -> [a] -> [a]
agregarElementoCabeza n xs = n : xs

{-agregar un elemento cola-}
agregarElementoCola :: a -> [a] -> [a]
agregarElementoCola n [] = [n]
agregarElementoCola n (x:xs) = x : {-concateno todas las cabezas con lo demas-} agregarElementoCola n xs

{-cambiar un elemento-}
cambiarElemento :: Eq a => a -> a -> [a] -> [a]
cambiarElemento n c [] = []  -- Caso base: lista vacía
cambiarElemento n c (x:xs)  | c == x    = n : xs  -- Si el elemento es el que queremos cambiar, lo reemplazamos con `n`
                            | otherwise = x : cambiarElemento n c xs  -- Si no, seguimos con el resto de la lista


{-cambiar un elemento segun su posicion-}
cambiarElementoPosicion :: Int -> a -> [a] -> [a]
cambiarElementoPosicion 0 n (x:xs) = n : xs  -- Si llegamos a la posición, cambiamos el elemento
cambiarElementoPosicion p n (x:xs) = x : cambiarElementoPosicion (p - 1) n xs  -- Recurre a la siguiente posición
cambiarElementoPosicion _ _ [] = []  -- Si la lista está vacía, retorna una lista vacía


 


{-Devolver los ultimos 3 elmentos-}
devolverUltimosTresElementos :: [a] -> [a]
devolverUltimosTresElementos (x:xs) | longitud (xs) == 3 = xs
                                    | otherwise = devolverUltimosTresElementos xs


{-GUIA DE EJERCICIOS-}

{-seguimos con pdf de ejercicios-}
productoSuma :: Int -> Int -> Int
productoSuma _ 0 = 0
productoSuma  x y = x + productoSuma x (y-1)

{-enfoque en el numerador, cuando es menor a 1 devuelve cero mientras tanto
se lo siguen enviando restado en denominador-}
cocienteRestas :: Int -> Int -> Int
cocienteRestas _ 0 = error "no se puede dividir por cero"
cocienteRestas num den  | num < 1 = 0 {-Caso base-}
                        | otherwise = 1 + cocienteRestas (num - den) den


resto :: Int -> Int -> Int
resto _ 0 = error "División por cero"  -- Caso de error si el divisor es 0
resto num den    | num < den = num  -- Si el dividendo es menor que el divisor, ese es el resto
                 | otherwise = resto (num - den) den  -- Resta el divisor y sigue calculando
{-cuando el numerador es menor que el denominador lo devuelvo sino lo sigo restando-}

insertar :: [a] -> a -> [a]
insertar [] _ = [] {-Asi son todos los casos bases cuando tiene 2 parametros-}
insertar (x:xs) y = x : y : insertar xs y



sumatoria :: Int -> Int 
sumatoria 1 = 1
sumatoria x = x + sumatoria (x-1)

sumaTotalArreglo :: Num p => [p] -> p
sumaTotalArreglo [] = 0
sumaTotalArreglo (x:xs) = x + sumaTotalArreglo xs {-esta bueno es raro-}


{-reveer este rapidamente-}

{-Si un numero es primo-}
{-se genera una lista de los numeros que dividen a n, si esta vacia entonces es primo-}
esPrimo :: Int ->Bool
esPrimo n = null [x | x <- [2 .. (n -1)], mod n x == 0] 
{-que agarre solo los primos-}

{-que me diga si es primo, true false-}





{-1RO HACER TODAS LAS DE LA CLASE PDF Y DESPUES TODAS LAS DEL PDF GUIA PRACTICA Y LISTO YA ESTAMOS , REPASAR
MAS LA DEL PDF GUIA PRACTICA
-}



{-PDF GUIA PRACTICA-}

{-PDF CLASE -}
cuadrado :: Int -> Int 
cuadrado x = x*x 

esPar :: Int -> Bool
esPar x = mod x 2 == 0 {-esto me devuelve falso o verdadero-}
                       {-mod (numerador denominador) devuelve el modulo-}

esImpar :: Int -> Bool
esImpar x = not (esPar x) {-Cuando niego algo debe estar toda la funcion entre parentesis-}

esImpar' :: Int -> Bool
esImpar' x = mod x 2 /= 0

factorial :: Int -> Int
factorial 0 = 1
factorial x = x * factorial (x-1)

doble :: Int -> Int 
doble x = (x + x)

tomar :: Int -> [a] -> [a]
tomar 0 x = [] {-caso base, si es 0 y me mandas entra la cabeza entonces la lista vacia envio-}
tomar _ [] = [] {-si la lista esta vacia ya chau-}
tomar n (x:xs) = x: tomar (n-1) xs

{-esto esta arriba
sumaTotalArreglo :: Num p => [p] -> p
sumaTotalArreglo [] = 0
sumaTotalArreglo (x:xs) = x + sumaTotalArreglo xs {-esta bueno es raro-}
-}


{-sumar2listas-}
trabajarConDosListas :: [Int] -> [Int] -> [Int]
trabajarConDosListas _ [] = []
trabajarConDosListas [] _ = []
trabajarConDosListas (x:xs) (y:ys) = (x + y) : trabajarConDosListas xs ys


trabajarConDosListas' :: [a] -> [a] -> [(a, a)]
trabajarConDosListas' [] _ = []                   -- Si la primera lista está vacía, devolver lista vacía
trabajarConDosListas' _ [] = []                   -- Si la segunda lista está vacía, devolver lista vacía
trabajarConDosListas' (x:xs) (y:ys) = (x, y) : trabajarConDosListas' xs ys


crearTupla :: a -> b -> (a, b)
crearTupla x y = (x, y)

prim :: Int -> Bool
prim n = null [x | x <- [2..(n-1)], mod n x == 0 ]

lista_primos :: Int -> Int -> [Int]
lista_primos n1 n2 = [x | x<- [n1..n2], (esPrimo x)]


