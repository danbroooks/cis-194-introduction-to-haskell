module ADTs.Lecture where

data Thing = Shoe
           | Ship
           | SealingWax
           | Cabbage
           | King
  deriving Show

isSmall :: Thing -> Bool
isSmall Shoe        = True
isSmall SealingWax  = True
isSmall Cabbage     = True
isSmall _           = False

data Failable = Failure
              | OK Double
  deriving (Eq, Show)

safeDivide :: Double -> Double -> Failable
safeDivide _ 0 = Failure
safeDivide x y = OK (x / y)

failureToDouble :: Failable -> Double
failureToDouble Failure = 0
failureToDouble (OK d)  = d

data Person = Person String Int Thing
  deriving Show

getAge :: Person -> Int
getAge (Person _ a _) = a

data IntList = Empty | Cons Int IntList

intListProd :: IntList -> Int
intListProd Empty      = 1
intListProd (Cons h t) = h * intListProd t
