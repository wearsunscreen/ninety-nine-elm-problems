# Problem 92

In graph theory, a graceful labeling of a graph with ```N``` edges is a labeling of its vertices with some subset of the integers between 0 and ```N``` , such that no two vertices share a label, and each edge is uniquely identified by the absolute difference between its endpoints. 

![](p92a.gif)

A unproven conjecture in graph theory is the *Graceful Tree conjecture* or *Ringel–Kotzig conjecture*, which hypothesizes that all trees are graceful. Find a graceful labeling of this larger tree.

![](p92b.gif)

```
import Html exposing (text)
import Maybe


type Graph a = (List a, Edges a)


g92 = Graph ([1..14], [(1,6),(2,6),(3,6),(4,6),(5,6),(5,7),(5,8),(8,9),(5,10),(10,11),(11,12),(11,13),(13,14)])


graceful : Graph a -> Maybe (Graph Int)
graceful g =  
  -- your implementation here


main =
    case graceful g92 of
        Just a ->
            text (toString a)

        Nothing ->
            text "Alert the media! You have found and exception of the Graceful Tree conjecture."
```

Result:
```
[6,7,8,9,3,4,10,11,5,12,2,13,14,1]
```
