# Problem 85

Determine whether two graphs are isomorphic. 


```
import Html exposing (text)


type Edges a = List (a, a)


type Graph a = (List a, Edges a)


g85a = ([1,2,3,4,5,6,7,8], [(1,5),(1,6),(1,7),(2,5),(2,6),(2,8),(3,5),(3,7),(3,8),(4,6),(4,7),(4,8)])


g85b = ([1,2,3,4,5,6,7,8], [(1,2),(1,4),(1,5),(6,2),(6,5),(6,7),(8,4),(8,5),(8,7),(3,2),(3,4),(3,7)])


isomorphic : Graph -> Graph -> Bool
isomorphic g1 g2 =
  -- your implementation here
  

main = text <| toString <| isIsomorphic g85a g85b
```

Result
```
True
```
