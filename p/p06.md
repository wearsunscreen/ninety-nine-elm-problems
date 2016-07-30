# Problem 60

Write a function to construct a height-balanced tree of a specified number of nodes and all nodes having a specified value.

```
import Html exposing (text)

type Tree a
    = Empty
    | Node a (Tree a) (Tree a)

heightBalancedTreeN : Int -> a -> Tree a 
heightBalancedTreeN nNodes value = 
-- your implementation goes here

main = 
  text 
  <| toString 
  <| heightBalancedTreeN 11 'x'   
  
```

