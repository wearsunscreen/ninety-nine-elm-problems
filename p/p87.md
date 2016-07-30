# Problem 87

Determine the depth-first traversal of a graph from a given starting point. 

```
import Html exposing (text)


type Edges a = List (a, a)
type Graph a = (List a, Edges a)


depthFirst : Graph a -> List a
depthFirst g start = 
  -- your implementation here


g87 = ([1,2,3,4,5,6,7], [(1,2),(2,3),(1,4),(3,4),(5,2),(5,4),(6,7)])
        

main = text <| toString <| depthFirst g87
```

Result
```
[1, 2, 3, 4, 5]
```