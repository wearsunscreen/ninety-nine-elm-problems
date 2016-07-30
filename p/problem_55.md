# Problem 55

In a balanced binary tree the difference between the number of nodes in the left and right subtrees is no greater than one.

Write a function to construct a balanced binary tree for a given number of nodes. Put the letter 'x' as data value for all nodes of the tree.

```
import Html exposing (text)

balancedTree : Int -> Tree Char 
balancedTree n = 
-- your implementation goes here

main = 
  text 
  <| toString 
  <| balancedTree 11   
  
```

