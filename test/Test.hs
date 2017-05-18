module Main where

import Test.Tasty (TestTree, defaultMain, testGroup)
import Test.Tasty.HUnit (assertEqual, testCase)

solutions :: TestTree
solutions = testGroup "example" [
    testCase "example"
      $ assertEqual "tens" 10 10
  ]

tests :: TestTree
tests = testGroup "tests" [solutions]

main :: IO ()
main = defaultMain tests
