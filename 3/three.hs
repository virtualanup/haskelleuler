main = print(largest_prime_factor 600851475143)

prime_factors :: Int -> Int -> [Int] -> [Int]
prime_factors number start current_factors =
    if number > start then
        if number `mod` start == 0 then
            if start `elem` current_factors then
                prime_factors (quot number start)  start current_factors
            else
                prime_factors (quot number start)  start (start : current_factors)
        else
            prime_factors number (start+1) current_factors
    else
        if start `elem` current_factors then
            current_factors
        else
            start : current_factors

largest_prime_factor number = maximum (prime_factors number 2 [])
