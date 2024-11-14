{-Ultimo elemento-}

ultimo [] = error "No hay elementos"

ultimo (x:[]) = x

ultimo (x:xs) = ultimo xs