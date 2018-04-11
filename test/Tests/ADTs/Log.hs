module Tests.ADTs.Log where

import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (Assertion, assertEqual, testCase)
import ADTs.Log

isEqual :: (Eq a, Show a) => a -> a -> Assertion
isEqual = assertEqual ""

validateTest :: TestTree
validateTest = testGroup "validate"
  [ testCase "4012888888881881" $ isEqual True (validate 4012888888881881)
  , testCase "4012888888881882" $ isEqual False (validate 4012888888881882)
  ]

tests :: TestTree
tests = testGroup "intro"
  [
  ]
