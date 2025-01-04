{-seguimos con pdf de ejercicios-}
productoSuma :: Int -> Int -> Int
productoSuma _ 0 = 0
productoSuma  x y = x + productoSuma x (y-1)