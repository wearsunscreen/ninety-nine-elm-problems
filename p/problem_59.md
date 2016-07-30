# Problem 59

In a height-balanced binary tree the difference between the heights of the left and right subtrees is not greater than one.

Write a function to construct a height-balanced tree of a specified height, filled with a specified value.

```
import Html exposing (text)

type Tree a
    = Empty
    | Node a (Tree a) (Tree a)

heightBalancedTree : Int -> a -> Tree a 
heightBalancedTree maxHeight value = 
-- your implementation goes here

main = 
  text 
  <| toString 
  <| heightBalancedTree 11 'x'   
  
```

