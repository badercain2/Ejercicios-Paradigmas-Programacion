
{-Si un numero es primo-}
{-se genera una lista de los numeros que dividen a n, si esta vacia entonces es primo-}
esPrimo :: Int ->Bool
esPrimo n = null [x | x <- [2 .. (n -1)], mod n x == 0] 
{-que agarre solo los primos-}

{-que me diga si es primo, true false-}
