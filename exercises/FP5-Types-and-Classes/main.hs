main :: IO ()
main = return ()

listA :: [Char]
listA = ['a', 'b', 'c']

tupleA :: (Char, Char, Char)
tupleA = ('a', 'b', 'c')

listB :: [(Bool, Char)]
listB = [(False, '0'), (True, '1')]

tupleB :: ([Bool], [Char])
tupleB = ([False, True], ['0', '1'])

listC :: [[a] -> [a]]
listC = [tail, init, reverse]

second :: [a] -> a
second xs = head (tail xs)

swap :: (a, b) -> (b, a)
swap (x, y) = (y, x)

pair :: a -> (b -> (a, b))
pair x y = (x, y)

double :: Int -> Int
double x = x * 2

palindrome :: (Eq a) => [a] -> Bool
palindrome xs = reverse xs == xs

twice :: (a -> a) -> (a -> a)
twice f a = f (f a)