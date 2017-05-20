module Intro.CreditCard where

toDigits :: Integer -> [Integer]
toDigits n
  | n > 0 = let remainder = n `mod` 10
    in toDigits ((n - remainder) `div` 10) ++ [remainder]
  | otherwise = []

toDigitsRev :: Integer -> [Integer]
toDigitsRev n = reverse $ toDigits $ n

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther xs = case (reverse xs)
  of (x:[]) -> [x]
     (x:(y:ys)) -> (doubleEveryOther (reverse ys)) ++ [y * 2, x]
     _ -> []

sumDigits :: [Integer] -> Integer
sumDigits [] = 0
sumDigits (x:[]) = if x < 10 then x else sumDigits (toDigits x)
sumDigits (x:xs) = sumDigits (toDigits x) + sumDigits xs

validate :: Integer -> Bool
validate cardNumber = (sumDigits (doubleEveryOther (toDigits cardNumber))) `mod` 10  == 0
