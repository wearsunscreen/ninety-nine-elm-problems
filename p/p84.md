# Problem 84

Use Prim's algorithm to find the minimal spanning tree of a labeled graph. 

```
import Html exposing (text)


type Edges a = List (a, a)


type Graph a = (List a, Edges a)


g84 = ([1,2,3,4,5], [(1,2,"12"),(1,3,"34"),(1,5,"78"),(2,4,"55"),(2,5,"32"),(3,4,"61"),(3,5,"44"),(4,5,"93")])

main = text <| toString <| prim g84 
```

Result
```
[(1,2,"12"),(1,3,"34"),(2,4,"55"),(2,5,"32")]
```
