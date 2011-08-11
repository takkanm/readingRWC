data BookInfo = Book Int String [String]
				deriving (Show)

data MagazineInfo = Magazine Int String [String]
					deriving (Show)

myInfo = Book 9780135072455 "Algebra of Programming" ["Richard Bird", "Oege de Moor"]

data BookReview = BookReview BookReview CustomerID String

type CustomerID = Int
type ReviewBody = String

data BetterReview = BetterReview BookInfo CustomerID ReviewBody

type BookRecord = (BookInfo, BookReview)
