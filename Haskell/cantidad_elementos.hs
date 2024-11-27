
{-Declaracion de un tipo-}
{-tipo de entrada -> tipo de salida -}


longitud :: [a] -> Int
longitud [] = 0
longitud (_:xs) = 1 + longitud xs



sumartupla :: (Int,Int) -> Int
sumartupla (a, b) = a + b 


{-Aca podemos meter todas las funciones que querramos-}






