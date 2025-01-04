{-el orden es importante, si ponemos el multiplicar x 0 = x . al final me tira error-}
multiplicar :: Int -> Int -> Int
multiplicar _ 0 = 0
multiplicar 0 _ = 0
multiplicar x y = x * y 