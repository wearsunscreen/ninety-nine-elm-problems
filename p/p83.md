# Problem 83
A spanning tree is subset of the nodes of a graph where all nodes are connected with the minimum number of edges. (See more properties of spanning trees [here](http://www.tutorialspoint.com/data_structures_algorithms/spanning_tree.htm).)

Use backtracking to find all spanning trees of a given graph. With this it is easy to create functions to determine  

```
import Html exposing (text)


type Edges a = List (a, a)


type Graph a = (List a, Edges a)


spanning : Graph a -> List (List a)
spanning g = 
    -- your implementation here
    
    
g83 = (['a', 'b', 'c', 'd'], [('a', 'b'), ('b', 'c'), ('c', 'd'), ('d', 'a'), ('a', 'c'), ('b', 'd')])


main = text <| toString <| List.length <| spanning g83
```

Result
```
14
```
