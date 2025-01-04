eliminarElemento :: Eq a => a -> [a] ->[a]
eliminarElemento _ [] = [] {-caso base de 2 parametros-}
eliminarElemento n (x:xs) | n == x = eliminarElemento n xs {-no lo copio-}
                          | otherwise = x: eliminarElemento n xs 