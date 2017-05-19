module Intro.CreditCard where

toDigits :: Integer -> [Integer]
toDigits n = []

toDigitsRev :: Integer -> [Integer]
toDigitsRev n = []

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther xs = xs

sumDigits :: [Integer] -> Integer
sumDigits nums = 0

validate :: Integer -> Bool
validate cardNumber = (sumDigits (doubleEveryOther (toDigits cardNumber))) `mod` 10  == 0
