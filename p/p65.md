# Problem 65

The illustration below depicts an alternative layout method. 


![](p65.gif)
Find out the rules and write the corresponding function. Hint: On a given level, the horizontal distance between neighboring nodes is constant. Write a function to annotate each node of the tree with its position. 
```
import Html exposing (text)

type Tree a
    = Empty
    | Node a (Tree a) (Tree a)

tree65 = Tree 'n'
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
                
layoutTree' : Tree a -> Tree (a, (Int, Int)) 
layoutTree' tree = 
-- your implementation goes here

main = 
  text 
  <| toString 
  <| layoutTree' tree64   
  
```
Result
```
Branch ('n',(15,1)) (Branch ('k',(7,2)) (Branch ('c',(3,3)) ...
```


