{-Funcion que devuelve la cabeza de una lista cualquiera-}


miCabezaSegura :: [a] ->  a

miCabezaSegura [] = error "No tiene cabeza"

miCabezaSegura (x:xs) = x
