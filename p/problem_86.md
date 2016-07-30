# Problem 86

86.a) Find the degree of a node in a graph. The degree  of a node is the number of edges touching that node. Note that a loop, an edge where both ends are the same node, it counted twice.

86.b) Generated a list of the nodes of a graph sorted by degree.

87.c) Use the Welch-Powell algorithm to color the nodes such all adjacent nodes have different colors. 

```
import Html exposing (text)


type Edges a = List (a, a)


type Graph a = (List a, Edges a)


degree : Graph a -> a -> Int
degree g n = 
  -- your implementation here
  
  
degrees : Graph a -> List (a, Int)
degrees g = 
  -- your implementation here


colorize : Graph a -> List (a, Int)
  -- your implementation here
  

g86 = ( ['a','b','c','d','e','f','g','h','i','j'],
      [ ('a','b'),('a','e'),('a','f'),('b','c'),('b','g'),
        ('c','d'),('c','h'),('d','e'),('d','i'),('e','j'),
        ('f','h'),('f','i'),('g','i'),('g','j'),('h','j')])
        

main = text <| toString <| colorize g86
```

Result
```
[('a',1),('b',2),('c',1),('d',2),('e',3),('f',2),('g',1),('h',3),('i',3),('j',2)]
```