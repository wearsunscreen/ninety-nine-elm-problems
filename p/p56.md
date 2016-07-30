# Problem 56

We call a binary tree symmetric if you can draw a vertical line through the root node and the right subtree is the mirror image of the left subtree. Write a function to check if a binary tree is symmetric. Hint: We are only interested in the structure, not in the contents of the nodes.

```
import Html exposing (text)

type Tree a
    = Empty
    | Node a (Tree a) (Tree a)

isSymmetric : Int -> Tree Char 
isSymmetric n = 
-- your implementation goes here

main = 
  text 
  <| toString 
  <| isSymmetric (Node 0 (Node 0 (Empty) (Empty)) (Node 0 (Empty) (Empty)))    
```

Result:
```
True
```
