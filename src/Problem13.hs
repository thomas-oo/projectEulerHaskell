import Data.Char

problem13 = do
  contents <- readFile "Problem13.txt"
  let
    contentLines = lines contents
    numbers = map read contentLines
  print $ sum numbers
