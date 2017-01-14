collatz :: Int -> [Int]
collatz x
  | x==1 = [1]
  | even x = x: (collatz (x`div`2))
  | odd x = x: (collatz (3*x+1))

lengthOfCollatz :: Int -> (Int, Int)
lengthOfCollatz x = (x, length $ collatz x)

searchInLists :: Int -> [[Int]] -> Bool
searchInLists x list = elem x $ concat list

collats = foldl (\acc x-> if(searchInLists x acc) then acc else collatz x : acc)[] [1000000,999999..1]
