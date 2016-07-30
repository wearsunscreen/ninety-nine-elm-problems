# Problem 66

The illustration below depicts yet another layout strategy. 

![](p66.gif)
The method yields a very compact layout while maintaining a certain symmetry in every node. Find out the rules and write the layout function. Hint: Consider the horizontal distance between a node and its successor nodes. How tight can you pack together two subtrees to construct the combined binary tree?

```
import Html exposing (text)

type Tree a
    = Empty
    | Node a (Tree a) (Tree a)

tree66 = Tree 'n'
                (Tree 'k'
                        (Tree 'c'
                                (Tree 'a' Empty Empty)
                                (Tree 'e'
                                        (Tree 'd' Empty Empty)
                                        (Tree 'g' Empty Empty)
                                )
                        )
                        (Tree 'm' Empty Empty)
                )
                (Tree 'u'
                        (Tree 'p'
                                Empty
                                (Tree 'q' Empty Empty)
                        )
                        Empty
                )
                
layoutTree'' : Tree a -> Tree (a, (Int, Int))
-- layoutTree'' tree =
  -- your implementation goes here

main =
  text
  <| toString
  <| layoutTree'' tree66
  
```
Result
```
Branch ('n',(5,1)) (Branch ('k',(3,2)) (Branch ('c',(2,3)) ...
```



