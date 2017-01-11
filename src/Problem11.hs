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
  print "Number at (0,0): "
  print $ numberAt (0,0) grid
  print "Vertical product of (0,0): "
  print $ verticalProduct (0,0) grid
  print "Horizontal product of (0,0): "
  print $ horizontalProduct (0,0) grid
  print "Diagonal product of (0,0): "
  print $ diagonalProduct (0,0) grid
readString :: String -> [Int]
readString string =  map read $ words string

loadGrid :: [String] -> [[Int]]
loadGrid grid = map readString grid

--stub.
numberAt :: (Int,Int) -> [[Int]] -> Int
numberAt (x,y) grid = (grid!! y) !! x

verticalProduct :: (Int,Int) -> [[Int]]-> Int
verticalProduct (x,y) grid =
  let a = numberAt (x,y) grid
      b = numberAt(x,y+1) grid
      c = numberAt(x,y+2) grid
      d = numberAt(x,y+3) grid
  in a*b*c*d

horizontalProduct :: (Int,Int) -> [[Int]] -> Int
horizontalProduct (x,y) grid =
  let a = numberAt (x,y) grid
      b = numberAt (x+1,y) grid
      c = numberAt (x+2,y) grid
      d = numberAt (x+3,y) grid
  in a*b*c*d

diagonalProduct :: (Int,Int) -> [[Int]] -> Int
diagonalProduct (x,y) grid =
  let a = numberAt (x,y) grid
      b = numberAt (x+1,y+1) grid
      c = numberAt (x+2,y+2) grid
      d = numberAt (x+3,y+3) grid
  in a*b*c*d
