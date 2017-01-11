problem2 =
  let fibonacci = 1:2 : zipWith (+) fibonacci (tail fibonacci)
  in sum $ filter (even) $ takeWhile (<4000000) fibonacci
