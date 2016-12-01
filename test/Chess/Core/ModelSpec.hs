module Chess.Core.ModelSpec (main, spec) where

import Test.Hspec
import Test.QuickCheck
import Chess.Core.Model

-- `main` is here so that this module can be run from GHCi on its own.  It is
-- not needed for automatic spec discovery.
main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "chess" $ do
    it "creates an active piece" $ do
      ActivePiece (Pawn White) ('A',2) `shouldBe` ActivePiece (Pawn White) ('A',2)

