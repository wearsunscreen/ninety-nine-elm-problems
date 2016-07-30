# Problem 70
a) Define a data type to represent multiway trees.

b) Create a multiway tree matching the illustration below. 

c) Write a function to count the nodes of a multiway tree.

d) Build a multiway tree of character values given a string of characters in the depth-first order sequence and a special character ```^```  inserted whenever during the tree traversal the move is a backtrack to the previous level. 

By this rule, the tree below is represented as: ```afg^^c^bd^e^^^``` Write a function to generate a tree from a string. 

![](p70.gif)


```
import Html exposing (text)


type Tree a = 
-- your type definition goes here


tree70 = 
-- declare an Tree here to match the illustration


countNodes : Tree -> Int
countNodes =
-- your implementation goes here


main =
    text
        <| toString
        <| countNodes tree70    
```

Result

```7```
