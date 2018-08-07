--
-- University:  Tecnológico de Costa Rica
-- Career:     	Computing Engineering
-- Teacher:     Ph.D. José Castro
-- Programmer:  Edisson López Díaz
-- 
-- N-queens problems,
-- resolves in HASKELL
--
-- Steps to install haskell on Linux
-- 1. Install haskell from terminal with the command: sudo apt-get install haskell-platform
-- 2. Install GHC (Glasgow Haskell Compiler) on https://www.haskell.org/ghc/ 
--
-- Steps to install haskell on Windows
-- 1. Install GHC (Glasgow Haskell Compiler) on https://www.haskell.org/ghc/ 
--
-- Steps to compile and run:
-- 1. Open GHCI
-- 2. Prelude> :cd C:/codes/
-- 3. Prelude> :load "haskell.hs"
-- 4. Prelufe> :run main
-- 5. ** the program is opened
-- 


-- --- --- --- --- --
-- Libraries imports
import Data.List
import Data.Char
import Control.Monad


-- --- --- --- --- --
-- Declarations of variables
duplicate :: String -> Int -> String
duplicate string n = concat $ replicate n string
solutions :: Int -> [[Int]]

-- --- --- --- --- --
-- Calculations

-- lenght_board : Lenght of the board before reaching the position of the queen
solutions lenght_board = map fst $ foldM swap ([],[1..lenght_board]) [1..lenght_board]  where 
  -- swap : Permutations of the boards
  swap (y,d) _ = [(x:y, delete x d) | x <- d, correct_swap x]  where
    -- correct_swap : The position of the queen is correct
    correct_swap x = and [x /= c + lenght_board && x /= c - lenght_board | (lenght_board,c) <- zip [1..] y]


-- --- --- --- --- --
-- Pretty Prints
printBoard y = do
  let lenght_board = length y
  let lenght_board_temp = lenght_board - 1
  putStrLn  ("+" ++ duplicate "-" lenght_board_temp ++ "+")
  mapM_ (\x ->  putStrLn [if z == x then 'X' else ' ' | z <- [1..lenght_board]]) y
  putStrLn  ("+" ++ duplicate "-" lenght_board_temp ++ "+")
  putStrLn ""
  putStrLn ""
  putStrLn ""

format = do
  putStrLn "Formato de impresión(8x8):"
  putStrLn "+-------+"
  putStrLn "X X X X "
  putStrLn " X X X X"
  putStrLn "X X X X "
  putStrLn " X X X X"
  putStrLn "X X X X "
  putStrLn " X X X X"
  putStrLn "X X X X "
  putStrLn " X X X X"
  putStrLn "+-------+"
  putStrLn "" 
  putStrLn "" 

-- --- --- --- --- --
-- Start
main = do
  putStrLn "N: " 
  inputjar <- getLine  
  putStrLn ""
  format
  let n = read inputjar :: Int
  putStrLn "Soluciones:"
  mapM_ printBoard $ solutions n