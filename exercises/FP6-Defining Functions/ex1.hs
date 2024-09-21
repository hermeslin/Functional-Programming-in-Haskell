-- conditional expression
safetyTailA :: [a] -> [a]
safetyTailA xs =
  if null xs
    then
      []
    else
      tail xs

-- guarded equaltions
safetyTailB :: [a] -> [a]
safetyTailB xs
  | null xs = []
  | otherwise = tail xs

-- pattern matching (using list pattern)
safetyTailC :: [a] -> [a]
-- if given a empty array, return a empty array
safetyTailC [] = []
-- colons just like the destructuring assignment of javascript
-- or php's list($a, $b) = [a, b]
safetyTailC (_ : xs) = xs