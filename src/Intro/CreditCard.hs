module Intro.CreditCard where

toDigits :: Integer -> [Integer]
toDigits n
  | n > 0 = let remainder = n `mod` 10
    in toDigits ((n - remainder) `div` 10) ++ [remainder]
  | otherwise = []

toDigitsRev :: Integer -> [Integer]
toDigitsRev n = reverse $ toDigits $ n

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther xs =
  let rec = case (reverse xs) of [] -> []
                                 (x:[]) -> [x]
                                 (x:(y:[])) -> [x, y * 2]
                                 (x:(y:ys)) -> [x, y * 2] ++ reverse (doubleEveryOther (reverse ys))
  in reverse rec

sumDigits :: [Integer] -> Integer
sumDigits [] = 0
sumDigits (x:[]) = if x < 10 then x else sumDigits (toDigits x)
sumDigits (x:xs) = sumDigits (toDigits x) + sumDigits xs

validate :: Integer -> Bool
validate cardNumber = (sumDigits (doubleEveryOther (toDigits cardNumber))) `mod` 10  == 0
