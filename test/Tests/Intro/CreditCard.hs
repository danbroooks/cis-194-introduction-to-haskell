module Tests.Intro.CreditCard where

import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (Assertion, assertEqual, testCase)
import Intro.CreditCard

isEqual :: (Eq a, Show a) => a -> a -> Assertion
isEqual = assertEqual ""

toDigitsTest :: TestTree
toDigitsTest = testGroup "toDigits"
  [ testCase "12 to list" $ isEqual [1,2] (toDigits 12)
  , testCase "1234 to list" $ isEqual [1,2,3,4] (toDigits 1234)
  , testCase "0 to list" $ isEqual [] (toDigits 0)
  , testCase "-17 to list" $ isEqual [] (toDigits (-17))
  ]

toDigitsRevTest :: TestTree
toDigitsRevTest = testGroup "toDigitsRev"
  [ testCase "342 to rev list" $ isEqual [2, 4, 3] (toDigitsRev 342)
  , testCase "90835 to rev list" $ isEqual [5, 3, 8, 0, 9] (toDigitsRev 90835)
  ]

doubleEveryOtherTest :: TestTree
doubleEveryOtherTest = testGroup "doubleEveryOther"
  [ testCase "doubles every second" $ isEqual [16, 7, 12, 5] (doubleEveryOther [8, 7, 6, 5])
  , testCase "doubles every second" $ isEqual [1, 4, 3] (doubleEveryOther [1, 2, 3])
  ]

sumDigitsTest :: TestTree
sumDigitsTest = testGroup "sumDigits"
  [ testCase "sums a list of digits" $ isEqual 22 (sumDigits [16, 7, 1, 2, 5])
  ]

validateTest :: TestTree
validateTest = testGroup "validate"
  [ testCase "4012888888881881" $ isEqual True (validate 4012888888881881)
  , testCase "4012888888881882" $ isEqual False (validate 4012888888881882)
  ]

tests :: TestTree
tests = testGroup "intro"
  [ toDigitsTest
  , toDigitsRevTest
  , doubleEveryOtherTest
  , sumDigitsTest
  , validateTest
  ]
