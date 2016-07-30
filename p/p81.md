# Problem 81

Write a function that, given two nodes a graph, returns all the acyclic paths between the two nodes.

```
import Html exposing (text)


type Edges a = List (a, a)


type Graph a = (List a, Edges a)


paths : Graph a a a -> List (List a)
paths g a b = 
    -- your implementation here
    
    
g81 = (['b','c','d','f','g','h','k'], [('b','c'),('b','f'),('c','f'),('f','k'),('g','h')])


main =
    text 
        <| toString 
        <| paths g81 'k' 'b'          
```

Result
```
[['k', 'f', 'c', 'b'], ['k', 'f', 'b']]
```
