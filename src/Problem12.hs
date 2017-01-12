import Data.List
triangleNumbers = scanl1 (+) [0..]

factorize :: Int -> [Int]
factorize x =
  let firstHalf = filter (\y -> x `mod` y == 0) [1..floor(sqrt (fromIntegral x))]
      secondHalf = map (x `div`) firstHalf
  in firstHalf++ reverse secondHalf

problem12 = find (\x -> length x > 500) $ map factorize triangleNumbers
