{-multiplicarElemento. aca se usa : -}
{-ASI SE "CONTATENA" LA CABEZA CON LA COLA-}
{-multiplicarElemento [x] = [x] , quite esta linea. Cuando queda 1 elemento devuelve ese-}
multiplicarElemento :: [Int] -> [Int]
multiplicarElemento [] = [] {- caso base. cuando la cola este vacia devuelve vacio,-}
multiplicarElemento (x:xs) = (x * 2) : multiplicarElemento xs
{-ASI SE "CONTATENA" LA CABEZA CON LA COLA-}
