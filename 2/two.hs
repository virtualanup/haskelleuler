main = print(getfibsum 4000000 1 1 2)
getfibsum :: Int -> Int -> Int -> Int -> Int
getfibsum limit one two three = if three >= limit then 0 else (three + getfibsum limit (two + three) (two + three + three) (2*two + 3*three))
