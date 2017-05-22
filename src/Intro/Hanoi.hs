module Intro.Hanoi where

type Peg = String
type Move = (Peg, Peg)

hanoi :: Integer -> Peg -> Peg -> Peg -> [Move]
hanoi 0 _ _ _ = []
hanoi 1 a b _ = [(a, b)]
hanoi n a b c = (hanoi (n - 1) a c b) ++ (hanoi 1 a b c) ++ (hanoi (n - 1) c b a)

hanoi4 :: Integer -> Peg -> Peg -> Peg -> Peg -> [Move]
hanoi4 0 _ _ _ _ = []
hanoi4 1 a b _ _ = [(a,b)]
hanoi4 2 a b _ d = (hanoi 2 a b d)
hanoi4 3 a b c d = (hanoi4 1 a d c b) ++ (hanoi4 2 a b d c) ++ (hanoi4 1 d b c a)
hanoi4 n a b c d = (hanoi4 (n - 3) a d c b) ++ (hanoi 3 a b c) ++ (hanoi4 (n - 3) d b c a)
