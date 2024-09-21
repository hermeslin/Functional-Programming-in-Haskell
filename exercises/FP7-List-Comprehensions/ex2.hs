-- perfect numbers
factors :: Int -> [Int]
factors x = [a | a <- [1 .. x], x `mod` a == 0]

isPerfect :: Int -> Bool
isPerfect x = sum [a | a <- factors x, a /= x] == x

perfects :: Int -> [Int]
perfects x = [a | a <- [1 .. x], isPerfect a]
