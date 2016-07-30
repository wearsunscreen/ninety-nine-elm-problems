# Problem 82

Find all closed paths (cycles) starting at a given node. Use backtracking to all cycles.


```
import Html exposing (text)


type Edges a = List (a, a)


type Graph a = (List a, Edges a)


cycles : Graph a a -> List (List a)
cycles g a = 
    -- your implementation here
    
    
g82 = ([1,2,3,4,5,6], [(1,2),(2,3),(1,3),(3,4),(4,2),(5,6)])


main =
    text 
        <| toString 
        <| cycles g82 2
```

Result
```
[[2,3,4,2]]
```
