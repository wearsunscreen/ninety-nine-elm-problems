# Problem 89

Determine if a graph is bipartite, that is, the nodes  can be divided into two disjoint in which every edge can connects to one node in each set.

![Illustration of a bipartite set](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Simple-bipartite-graph.svg/180px-Simple-bipartite-graph.svg.png)

```
import Html exposing (text)


type Edges a = List (a, a)


type Graph a = (List a, Edges a)


g89a = Graph [1, 2, 3, 4, 5], [(1,2),(2,3),(1,4),(3,4),(5,2),(5,4)]
g89b = Graph [1, 2, 3, 4, 5], [(1,2),(2,3),(1,4),(3,4),(5,2),(5,4),(1,3)]]


isBipartite : Graph a -> Bool
isBipartite g = 
  -- your implementation here


main = text <| toString <| isBipartite g89a
```

Result
```
True
```