main = print (getsum 1000)
getsum limit = sum [x | x <- [3..limit-1], x `mod` 3 == 0 || x `mod` 5 == 0]
