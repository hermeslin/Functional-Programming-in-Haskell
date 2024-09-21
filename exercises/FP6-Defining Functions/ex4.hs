-- (4)
-- True && b = b
-- True && _ = False

-- if True then a else False
(&&) :: Bool -> Bool -> Bool
a && b = if a == True then a else False
