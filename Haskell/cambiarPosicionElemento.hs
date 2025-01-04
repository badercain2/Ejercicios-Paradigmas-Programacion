
{-cambiar un elemento segun su posicion-}
cambiarElementoPosicion :: Int -> a -> [a] -> [a]
cambiarElementoPosicion 0 n (x:xs) = n : xs  -- Si llegamos a la posición, cambiamos el elemento
cambiarElementoPosicion p n (x:xs) = x : cambiarElementoPosicion (p - 1) n xs  -- Recurre a la siguiente posición
cambiarElementoPosicion _ _ [] = []  -- Si la lista está vacía, retorna una lista vacía
