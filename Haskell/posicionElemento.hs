
posicionElemento :: Eq a => a ->  [a] -> Int 
posicionElemento _ [] = error "lista vacia"
posicionElemento n (x:xs) | x == n = 1
                          | otherwise = 1 + posicionElemento n xs  