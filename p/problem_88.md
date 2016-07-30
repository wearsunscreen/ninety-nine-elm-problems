# Problem 88

Split a graph into its connected components.

```
import Html exposing (text)


type Edges a = List (a, a)


type Graph a = (List a, Edges a)


connected : Graph a -> List (List a)
connected g = 
  -- your implementation here


g87 = ([1,2,3,4,5,6,7], [(1,2),(2,3),(1,4),(3,4),(5,2),(5,4),(6,7)])
        

main = text <| toString <| connected g87
```

Result
```
[[1,2,3,4,5][6,7]]
```