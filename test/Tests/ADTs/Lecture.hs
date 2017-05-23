module Tests.ADTs.Lecture where

import Test.Tasty (TestTree, defaultMain, testGroup)
import Test.Tasty.HUnit (Assertion, assertEqual, testCase)
import ADTs.Lecture

isEqual :: (Eq a, Show a) => a -> a -> Assertion
isEqual = assertEqual ""

shoe :: Thing
shoe = Shoe

king :: Thing
king = King

isSmallTest :: TestTree
isSmallTest = testGroup "isSmall"
  [ testCase "something small" $ isEqual True (isSmall shoe)
  , testCase "something big"   $ isEqual False (isSmall king)
  ]

safeDivideTest :: TestTree
safeDivideTest = testGroup "safeDivide"
  [ testCase "returns a failure when dividing by 0" $ isEqual Failure  (safeDivide 7 0)
  , testCase "performs division when dividing with non-zero number" $ isEqual (OK 3)   (safeDivide 9 3)
  ]

failureToDoubleTest :: TestTree
failureToDoubleTest = testGroup "failureToDouble"
  [ testCase "turns failure to 0" $ isEqual 0 (failureToDouble Failure)
  , testCase "returns contained value for OK" $ isEqual 7 (failureToDouble $ OK 7)
  ]

getAgeTest :: TestTree
getAgeTest = testGroup "getAge"
  [ testCase "gets age from person type" $ isEqual 31 (getAge $ Person "Brent" 31 SealingWax)
  , testCase "gets age from person type" $ isEqual 94 (getAge $ Person "Stan" 94 Cabbage)
  ]

intListProdTest :: TestTree
intListProdTest = testGroup "intListProd"
  [ testCase "gets product of list" $ isEqual 1 (intListProd $ Empty)
  , testCase "gets product of list" $ isEqual 2 (intListProd $ Cons 2 Empty)
  , testCase "gets product of list" $ isEqual 6 (intListProd $ Cons 2 (Cons 3 Empty))
  ]

tests :: TestTree
tests = testGroup "ADTs"
  [ isSmallTest
  , safeDivideTest
  , failureToDoubleTest
  , getAgeTest
  , intListProdTest
  ]
