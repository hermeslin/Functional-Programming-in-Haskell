-- scalar product
scalarProduct :: [Int] -> [Int] -> Int
scalarProduct xs ys = sum [x * y | (x, y) <- zip xs ys]

-- or mathematical way
sp :: [Int] -> [Int] -> Int
sp xs ys = sum [(xs !! i) * (ys !! i) | i <- [1 .. n - 1]]
  where
    n = length xs
