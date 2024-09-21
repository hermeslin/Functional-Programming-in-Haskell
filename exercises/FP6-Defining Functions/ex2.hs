-- (2) Given three possible definitions for the logical `or` operator (||) using pattern match

-- False || False = False
-- False || True = True
-- True || True = True
-- True || False = True

(||) :: Bool -> Bool -> Bool
False || False = False
_ || _ = True
False || b = b
True || _ = True