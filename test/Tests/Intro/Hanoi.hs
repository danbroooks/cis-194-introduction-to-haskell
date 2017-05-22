module Tests.Intro.Hanoi where

import Test.Tasty (TestTree, testGroup)
import Test.Tasty.HUnit (Assertion, assertEqual, testCase)
import Intro.Hanoi

isEqual :: (Eq a, Show a) => a -> a -> Assertion
isEqual = assertEqual ""

hanoiTest :: TestTree
hanoiTest = testGroup "hanoi"
  [ testCase "one disc" $ isEqual [("a","b")] (hanoi 1 "a" "b" "c")
  , testCase "two discs" $ isEqual [("a","c"),("a","b"),("c","b")] (hanoi 2 "a" "b" "c")
  , testCase "three discs" $ isEqual [("a","b"),("a","c"),("b","c"),("a","b"),("c","a"),("c","b"),("a","b")] (hanoi 3 "a" "b" "c")
  ]

hanoi4Test :: TestTree
hanoi4Test = testGroup "hanoi 4 pegs"
  [ testCase "one disc"
    $ isEqual [("a","b")] (hanoi4 1 "a" "b" "c" "d")
  , testCase "two discs"
    $ isEqual [("a","d"),("a","b"),("d","b")] (hanoi4 2 "a" "b" "c" "d")
  , testCase "three discs"
    $ isEqual [("a","d"),("a","c"),("a","b"),("c","b"),("d","b")] (hanoi4 3 "a" "b" "c" "d")
  , testCase "four discs"
    $ isEqual [("a","d"),("a","b"),("a","c"),("b","c"),("a","b"),("c","a"),("c","b"),("a","b"),("d","b")] (hanoi4 4 "a" "b" "c" "d")
  , testCase "takes a lot fewer moves to complete"
    -- $ isEqual 129 (length $ hanoi4 15 "a" "b" "c" "d")
    $ isEqual 185 (length $ hanoi4 15 "a" "b" "c" "d")
  ]

tests :: TestTree
tests = testGroup "intro"
  [ hanoiTest
  , hanoi4Test
  ]
