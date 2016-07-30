# Problem 57

Build a binary tree from a list of integers.


```
import Html exposing (text)

type Tree a
    = Empty
    | Node a (Tree a) (Tree a)

toTree : List Int -> Tree Int 
toTree list = 
-- your implementation goes here

main = 
  text 
    <| toString 
    <| toTree [1..10]    
```

Result:
```
```
