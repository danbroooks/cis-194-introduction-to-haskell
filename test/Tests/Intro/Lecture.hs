module Tests.Intro.Lecture where

import Test.Tasty (TestTree, defaultMain, testGroup)
import Test.Tasty.HUnit (Assertion, assertEqual, testCase)
import Intro.Lecture

isEqual :: (Eq a, Show a) => a -> a -> Assertion
isEqual = assertEqual ""

sumtorialTest :: TestTree
sumtorialTest = testGroup "sumtorial"
  [ testCase "of 1" $ isEqual 1 (sumtorial 1)
  , testCase "of 2" $ isEqual 3 (sumtorial 2)
  , testCase "of 3" $ isEqual 6 (sumtorial 3)
  , testCase "of 4" $ isEqual 10 (sumtorial 4)
  , testCase "of 5" $ isEqual 15 (sumtorial 5)
  ]

hailstoneTest :: TestTree
hailstoneTest = testGroup "hailstone"
  [ testCase "hailstone of 1" $ isEqual 4 (hailstone 1)
  , testCase "hailstone of 2" $ isEqual 1 (hailstone 2)
  , testCase "hailstone of 3" $ isEqual 10 (hailstone 3)
  , testCase "hailstone of 4" $ isEqual 2 (hailstone 4)
  , testCase "hailstone of 5" $ isEqual 16 (hailstone 5)
  , testCase "hailstone of 6" $ isEqual 3 (hailstone 6)
  ]

isEvenTest :: TestTree
isEvenTest = testGroup "isEven"
  [ testCase "0 is even" $ isEqual True (isEven 0)
  , testCase "1 is not even" $ isEqual False (isEven 1)
  , testCase "2 is even" $ isEqual True (isEven 2)
  , testCase "3 is not even" $ isEqual False (isEven 3)
  ]

sumPairTest :: TestTree
sumPairTest = testGroup "sumPair"
  [ testCase "(3, 5) summed" $ isEqual 8 (sumPair (3, 5))
  , testCase "(30, 20) summed" $ isEqual 50 (sumPair (30, 20))
  ]

hailstoneSeqTest :: TestTree
hailstoneSeqTest = testGroup "hailstoneSeq"
  [ testCase "sequence of 1" $ isEqual [1] (hailstoneSeq 1)
  , testCase "sequence of 6" $ isEqual [6, 3, 10, 5, 16, 8, 4, 2, 1] (hailstoneSeq 6)
  ]

intListLengthTest :: TestTree
intListLengthTest = testGroup "intListLength"
  [ testCase "length of 4" $ isEqual 4 (intListLength [1, 2, 3, 4])
  , testCase "length of 2" $ isEqual 2 (intListLength [1, 2])
  ]

tests :: TestTree
tests = testGroup "intro"
  [ sumtorialTest
  , hailstoneTest
  , isEvenTest
  , sumPairTest
  , hailstoneSeqTest
  ]
