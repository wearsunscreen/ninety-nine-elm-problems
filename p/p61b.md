# Problem 61

a) Count the leaves (nodes that have empty nodes in their right and left subtrees) of a binary tree.

```
import Html exposing (text)

type Tree a
    = Empty
    | Node a (Tree a) (Tree a)

aTree = Tree 1 (Tree 2 Empty (Tree 4 Empty Empty))
                 (Tree 2 Empty Empty)

countLeaves : Tree a -> Int 
countLeaves tree = 
-- your implementation goes here

main = 
  text 
  <| toString 
  <| countLeaves aTree   
  
```
Result
```
2
```

b) Extract the leaves (nodes that have empty nodes in their right and left subtrees) of a binary tree into a list.

```
import Html exposing (text)

type Tree a
    = Empty
    | Node a (Tree a) (Tree a)

aTree = Tree 1 (Tree 2 Empty (Tree 4 Empty Empty))
                 (Tree 2 Empty Empty)

getLeaves : Tree a -> Int 
getLeaves tree = 
-- your implementation goes here

main = 
  text 
  <| toString 
  <| getLeaves aTree   
  
```
Result
```
[4, 2]
```
