-- (3)
-- True && True = True
-- True && _ = False
(&&) :: Bool -> Bool -> Bool
a && b =
  if a == True
    then
      if b == True
        then
          True
        else
          False
    else False