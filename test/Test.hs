module Main where

import Test.Tasty (defaultMain, testGroup)
import qualified Tests.Intro.Lecture
import qualified Tests.Intro.CreditCard
import qualified Tests.Intro.Hanoi
import qualified Tests.ADTs.Lecture

main :: IO ()
main = defaultMain $ testGroup "tests"
  [ testGroup "lectures"
    [ Tests.Intro.Lecture.tests
    , Tests.ADTs.Lecture.tests ]
  , testGroup "assignments"
    [ Tests.Intro.CreditCard.tests
    , Tests.Intro.Hanoi.tests ]
  ]
