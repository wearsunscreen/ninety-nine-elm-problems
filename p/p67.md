# Problem 67
Consider a string representation of a tree such as:

* ```a(b(d,e),c(,f(g,)))```

a) Write a function to generate a string representation of a tree. 
b) Write a function to generate a tree from its string representation.


![](p66.gif)
The method yields a compact layout while maintaining a certain symmetry in every node. Find out the rules and write the layout function. Hint: Consider the horizontal distance between a node and its successor nodes. How tight can you pack together two subtrees to construct the combined binary tree?

```
import Html exposing (text)


type Tree a
    = Empty
    | Node a (Tree a) (Tree a)


tree67 =
    "x(y,a(,b))"


stringToTree : String -> Tree String
stringToTree s =
-- your implementation here


treeToString : String -> Tree String
treeToString s =
-- your implementation here


main =
    text
        <| treeToString
        <| stringToTree tree67        
```
        
Result
```
```



