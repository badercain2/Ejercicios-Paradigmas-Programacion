ultimoElemento :: [a] -> a 
ultimoElemento [] = error "error la lista esta vacia"
ultimoElemento [x] = x  {-cuando la lista tenga su ultimo elemento devuelve ese-}
ultimoElemento (_:xs) = ultimoElemento xs