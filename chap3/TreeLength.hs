data Tree a = Node a (Tree a) (Tree a) | Empty
            deriving (Show)

treeLength Empty = 0
treeLength (Node a Empty Empty) = 1
treeLength (Node a left right) =  if leftDepth < rightDepth 
                                  then 1 + rightDepth
                                  else 1 + leftDepth
    where leftDepth = treeLength left
          rightDepth = treeLength right
