module Chess.Core.ModelSpec (main, spec) where

import Test.Hspec
import Test.QuickCheck
import Chess.Core.Model
import qualified Data.Set as Set

-- `main` is here so that this module can be run from GHCi on its own.  It is
-- not needed for automatic spec discovery.
main :: IO ()
main = do
  hspec spec
  hspec spec

spec :: Spec
spec = do
  createPiece
  createPosition

createPiece :: Spec
createPiece = do
  describe "chess" $ do
    it "creates an active piece" $ do
      ActivePiece (Pawn White) ('A',2) `shouldBe` ActivePiece (Pawn White) ('A',2)

createPosition :: Spec
createPosition = do
  describe "empty board" $ do
    it "should create an empty board" $ do
        Set.size emptyBoard `shouldBe` 0