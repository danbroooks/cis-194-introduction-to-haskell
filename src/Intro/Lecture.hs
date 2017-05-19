module Intro.Lecture where

sumtorial :: Integer -> Integer
sumtorial 0 = 0
sumtorial n = n + sumtorial (n - 1)

hailstone :: Integer -> Integer
hailstone n
  | isEven n  = n `div` 2
  | otherwise = 3 * n + 1

isEven :: Integer -> Bool
isEven n = n `mod` 2 == 0

sumPair :: (Int, Int) ->  Int
sumPair (x, y) = x + y

hailstoneSeq :: Integer -> [Integer]
hailstoneSeq 1 = [1]
hailstoneSeq n = n : hailstoneSeq (hailstone n)

intListLength :: [Integer] -> Integer
intListLength []     = 0
intListLength (_:xs) = 1 + intListLength xs
