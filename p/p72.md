# Problem 72
We define the internal path length of a multi-way tree as the total sum of the path lengths from the root to all nodes of the tree. The tree shown below has an internal path length of 9.

![](p70.gif)

Write a function to determine the bottom-up sequence of the nodes of a multiway tree.

```
import Html exposing (text)


type Tree a = Node a List Tree a


tree71 = 
  Node 'a' 
    [ Node 'f' 
      [ Node 'g' []]
      , Node 'c' []
      , Node 'b' 
        [ Node 'd' []
        , Node 'e' []
      ]
    ]


internalPathLength : Tree a -> Int
internalPathLength = -- your implementation here


main =
    text
        <| toString
        <| internalPathLength tree71)    
```

Result
```
['g', 'f', 'c', 'd', 'e', 'b', 'a']
```
