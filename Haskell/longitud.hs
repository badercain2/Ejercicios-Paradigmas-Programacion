longitudS :: [String] -> Int
longitudS [] = 0
longitudS (_:xs) = 1 + longitudS xs