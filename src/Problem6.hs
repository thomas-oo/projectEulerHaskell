summedSquares =
  let
  list = zipWith (*) [1..100] [1..100]
  in sum list

squareOfSum =
  let sum100 = sum [1..100]
  in sum100*sum100

problem6 = squareOfSum - summedSquares
