module Tests.Intro.Hanoi where

import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (Assertion, assertEqual, testCase)
import Intro.Hanoi

isEqual :: (Eq a, Show a) => a -> a -> Assertion
isEqual = assertEqual ""

hanoiTest :: TestTree
hanoiTest = testGroup "hanoi"
  [ testCase "one disc" $ isEqual [("a", "b")] (hanoi 1 "a" "b" "c")
  , testCase "two discs" $ isEqual [("a", "c"), ("a", "b"), ("c", "b")] (hanoi 2 "a" "b" "c")
  , testCase "three discs" $ isEqual [("a", "b"), ("a", "c"), ("b", "c"), ("a", "b"), ("c", "a"), ("c", "b"), ("a", "b")] (hanoi 3 "a" "b" "c")
  ]

tests :: TestTree
tests = testGroup "intro"
  [ hanoiTest
  ]
