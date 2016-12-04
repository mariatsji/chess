module Chess.Core.Model (ActivePiece(..), Piece(..), Color(..), Col(..), Row(..), Square(..), Position(..), emptyBoard) where

import qualified Data.Set as Set

data Color = White | Black deriving (Eq,Show,Ord,Enum,Bounded)
data Piece = Pawn Color | Knight Color | Bishop Color | Rook Color | Queen Color | King Color deriving (Eq,Show,Ord)

type Col = Char
type Row = Integer
type Square = (Col, Row)

data ActivePiece = ActivePiece Piece Square deriving (Eq,Show,Ord)

type Position = Set.Set ActivePiece

emptyBoard :: Position
emptyBoard = Set.empty