import Data.Char
{-|represent the grid as a list of lists of integers,
the innermost list representing a horizontal row
and the outermost list representing which horizontal row
-}

{-|reference numbers in this list with coordinates
eg. numberAt :: (Int,Int) -> Int
the implementation will search the grid for that number
-}

main = do
  contents <- readFile "Problem11.txt"
  let grid = loadGrid $ lines contents
  print grid
  print $ numberAt (4,4) grid

readString :: String -> [Int]
readString string =  map read $ words string

loadGrid :: [String] -> [[Int]]
loadGrid grid = map readString grid

--stub.
numberAt :: (Int,Int) -> [[Int]] -> Int
numberAt (x,y) grid = (grid!! y) !! x
