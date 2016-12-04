module Chess.Core.Model (ap, wp, bp, wkn, bkn, wb, bb, wr, br, wq, bq, wki, bki,
a1, a2, a3, a4, a5, a6, a7, a8, b1, b2, b3, b4, b5, b6, b7, b8, c1, c2, c3, c4, c5, c6, c7, c8, d1, d2, d3, d4, d5,
d6, d7, d8, e1, e2, e3, e4, e5, e6, e7, e8, f1, f2, f3, f4, f5, f6, f7, f8, g1, g2, g3, g4, g5, g6, g7, g8, h1, h2,
h3, h4, h5, h6, h7, h8, Color(..), emptyBoard, grab, place) where

import qualified Data.Set as Set

data Color = White | Black deriving (Eq,Show,Ord,Enum,Bounded)
data Piece = Pawn Color | Knight Color | Bishop Color | Rook Color | Queen Color | King Color deriving (Eq,Show,Ord)

type Col = Char
type Row = Integer
type Square = (Col, Row)

data ActivePiece = ActivePiece Piece Square deriving (Eq,Show,Ord)

ap :: Piece -> Square -> ActivePiece
ap p s = ActivePiece p s

wp = Pawn White :: Piece
bp = Pawn Black  :: Piece
wkn = Knight White  :: Piece
bkn = Knight Black :: Piece
wb = Bishop White :: Piece
bb = Bishop Black :: Piece
wr = Rook White :: Piece
br = Rook Black :: Piece
wq = Queen White :: Piece
bq = Queen Black :: Piece
wki = King White :: Piece
bki = King Black :: Piece

a1 = ('A', 1)
a2 = ('A', 2)
a3 = ('A', 3)
a4 = ('A', 4)
a5 = ('A', 5)
a6 = ('A', 6)
a7 = ('A', 7)
a8 = ('A', 8)

b1 = ('B', 1)
b2 = ('B', 2)
b3 = ('B', 3)
b4 = ('B', 4)
b5 = ('B', 5)
b6 = ('B', 6)
b7 = ('B', 7)
b8 = ('B', 8)

c1 = ('C', 1)
c2 = ('C', 2)
c3 = ('C', 3)
c4 = ('C', 4)
c5 = ('C', 5)
c6 = ('C', 6)
c7 = ('C', 7)
c8 = ('C', 8)

d1 = ('D', 1)
d2 = ('D', 2)
d3 = ('D', 3)
d4 = ('D', 4)
d5 = ('D', 5)
d6 = ('D', 6)
d7 = ('D', 7)
d8 = ('D', 8)

e1 = ('E', 1)
e2 = ('E', 2)
e3 = ('E', 3)
e4 = ('E', 4)
e5 = ('E', 5)
e6 = ('E', 6)
e7 = ('E', 7)
e8 = ('E', 8)

f1 = ('F', 1)
f2 = ('F', 2)
f3 = ('F', 3)
f4 = ('F', 4)
f5 = ('F', 5)
f6 = ('F', 6)
f7 = ('F', 7)
f8 = ('F', 8)

g1 = ('G', 1)
g2 = ('G', 2)
g3 = ('G', 3)
g4 = ('G', 4)
g5 = ('G', 5)
g6 = ('G', 6)
g7 = ('G', 7)
g8 = ('G', 8)

h1 = ('H', 1)
h2 = ('H', 2)
h3 = ('H', 3)
h4 = ('H', 4)
h5 = ('H', 5)
h6 = ('H', 6)
h7 = ('H', 7)
h8 = ('H', 8)

type Position = Set.Set ActivePiece

emptyBoard :: Position
emptyBoard = Set.empty

place :: ActivePiece -> Position -> Position
place = Set.insert

grab :: ActivePiece -> Position -> Position
grab = Set.delete