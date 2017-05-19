module Main where

import Test.Tasty (defaultMain, testGroup)
import qualified Tests.Intro.Lecture

main :: IO ()
main = defaultMain $ testGroup "tests"
  [ Tests.Intro.Lecture.tests ]
