merge :: (Ord a) => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (x : xs) (y : ys)
  | x <= y = x : merge xs (y : ys)
  | otherwise = y : merge (x : xs) ys

halve :: [a] -> ([a], [a])
halve [] = ([], [])
-- or just use splitAt function
-- `(take n xs, drop n xs)` can use `splitAt n xs`
halve xs = (take n xs, drop n xs)
  where
    n = length xs `div` 2

mergeSort :: [Int] -> [Int]
mergeSort [] = []
mergeSort [x] = [x]
mergeSort xs = merge (mergeSort ys) (mergeSort zs)
  where
    (ys, zs) = halve xs