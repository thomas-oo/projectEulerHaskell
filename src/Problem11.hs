import Data.Char
{-|represent the grid as a list of lists of integers,
the innermost list representing a horizontal row
and the outermost list representing which horizontal row
-}

{-|reference numbers in this list with coordinates
eg. numberAt :: (Int,Int) -> Int
the implementation will search the grid for that number
-}

readString :: String -> [Int]
readString string = map read $ words string

loadGrid :: [String] -> [[Int]]
loadGrid grid = map readString grid

--stub.
numberAt :: (Int,Int) -> Int
numberAt _ = 0
