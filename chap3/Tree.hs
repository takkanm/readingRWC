import Data.Maybe
data Tree a = Tree (Maybe (a, Maybe (Tree a), Maybe (Tree a)))
            deriving (Show)
empty = Tree Nothing
