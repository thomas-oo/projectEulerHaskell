divisibleByEleven = filter (\x -> mod x 11 == 0) [100..999]

isPalindrome :: Integer -> Bool
isPalindrome x = read(reverse(show x)) == x

problem4 = maximum [x*y|x <- [100..999], y<-divisibleByEleven, isPalindrome (x*y)]
