
--This prime algorithm was taken from stack overflow. It's basically a sieve that is of O(1.5)
primes :: [Integer]
primes = 2: 3: sieve (tail primes) [5,7..]
 where
  sieve (p:ps) xs = h ++ sieve ps [x | x <- t, x `rem` p /= 0]
                                -- or:  filter ((/=0).(`rem`p)) t
                  where (h,~(_:t)) = span (< p*p) xs

problem10 = sum $ takeWhile (<2000000) $ primes
