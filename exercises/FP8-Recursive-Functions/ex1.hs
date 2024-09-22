-- 1.
isAllTrue :: [Bool] -> Bool
isAllTrue [] = True
isAllTrue (x : xs) = x && isAllTrue xs

-- 2.
concatArray :: [[a]] -> [a]
concatArray [] = []
concatArray (x : xss) = x ++ concatArray xss

-- 3.
replicateAnything :: Int -> a -> [a]
replicateAnything 0 x = []
replicateAnything n x = x : replicateAnything (n - 1) x

-- replicateAnything n x
--   | n == 0 = []
--   | otherwise = x : replicateAnything (n - 1) x

-- 4.
selectElementByIndex :: [a] -> Int -> a
selectElementByIndex (x : xs) 0 = x
selectElementByIndex (x : xs) n = selectElementByIndex xs (n - 1)

-- 5.
isElementInList :: (Eq a) => a -> [a] -> Bool
isElementInList _ [] = False
isElementInList y (x : xs) = y == x || isElementInList y xs
