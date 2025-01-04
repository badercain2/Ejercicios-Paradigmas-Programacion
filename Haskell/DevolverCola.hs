{-tail [1,4,2,4]. Existe el mensaje directo en el terminal-}
{-me devuelve una lista-}
{-devolverCola "hola". esto me devuelve. "ola" . Tambien funciona con Strings-}
devolverCola:: [a] -> [a] 
devolverCola []  =  error "La lista está vacía"
devolverCola (_:xs) = xs