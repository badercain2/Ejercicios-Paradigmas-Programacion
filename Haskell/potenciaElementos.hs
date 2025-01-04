potenciaElemento :: [Int] ->[Int]
potenciaElemento [] = [] {-Caso base-}
potenciaElemento (x:xs) = (x * x) : potenciaElemento xs
{-Agarro la cabeza x y hago algo y luego concateno: funcion recursiva y cola  -}
