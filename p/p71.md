# Problem 71
We define the internal path length of a multiway tree as the total sum of the path lengths from the root to all nodes of the tree. The tree shown below has an internal path length of 9.

![](p70.gif)

Write a function to determine the internal path length of a tree

```
import Html exposing (text)


type Tree a = Node a List (Tree a)


mtree71 = 
Node 'a' [Node 'f' [Node 'g'], Node 'c'[], Node 'b'[Node 'd' [], Node 'e' []]]


internalPathLength : Tree a -> Int
internalPathLength = -- your implementation here


main =
    text
        <| internalPathLength
        <| mtree71)    
```

Result
```9```