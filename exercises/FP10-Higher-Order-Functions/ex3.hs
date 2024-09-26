-- redefine map and filter using foldr
mapRecursion :: (a -> a) -> [a] -> [a]
mapRecursion f [] = []
mapRecursion f (x : xs) = f x : mapRecursion f xs

mapFoldr :: (a -> a) -> [a] -> [a]
mapFoldr f xs = foldr (\x xs -> (f x) : xs) [] xs

filterRecursion :: (a -> Bool) -> [a] -> [a]
filterRecursion f [] = []
filterRecursion f (x : xs)
  | f x = x : filterRecursion f xs
  | otherwise = filterRecursion f xs

filterFoldr :: (a -> Bool) -> [a] -> [a]
filterFoldr f xs = foldr (\x xs -> if f x then (x : xs) else xs) [] xs
