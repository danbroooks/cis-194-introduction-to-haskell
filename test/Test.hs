module Main where

import Test.Tasty (defaultMain, testGroup)
import qualified Tests.Intro.Lecture
import qualified Tests.Intro.CreditCard

main :: IO ()
main = defaultMain $ testGroup "tests"
  [ testGroup "lectures"
    [ Tests.Intro.Lecture.tests ]
  , testGroup "assignments"
    [ Tests.Intro.CreditCard.tests ]
  ]
