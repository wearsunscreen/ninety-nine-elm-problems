# Problem 67b

Consider a string representation of a tree such as:

```a(b(d,e),c(,f(g,)))```

Write a function to generate a tree from its string representation created in [Problem 67a](p67a.md).

##Example
```elm
toTree "x(y,a(,b))" ==  
    Node 'x' 
        (Node 'y' Empty Empty) 
        (Node 'a' 
            Empty 
            (Node 'b' Empty Empty))
```

##Unit test

```elm
import Html
import List
import String


type Tree a
    = Empty
    | Node a (Tree a) (Tree a)


toTree : Tree a -> String
toTree tree =
    -- your implementation goes here
    ""

main =
    Html.text
        (if (test) then
            "Your implementation passed all tests."
         else
            "Your implementation failed at least one test."
        )


test : Bool
test =
    List.all ((==) True)
      [ toTree "" == Empty
      , toTree s1 == t1 
      , toTree s2 == t2 
      , toTree s3 == t3 
      , treeToString (Node 'z' Empty tChar) == "z(,x(y,a(,b)))" 
      , treeToString (Node 'z' tChar Empty) == "z(x(y,a(,b)),)" 
      , treeToString tString == "x(y,a(,b))" 
      , treeToString tInt == "8(9,1(,2))"
      , treeToString (Node 3 (Node 4 tInt Empty) Empty) 
          == "3(4(8(9,1(,2)),),)"
      ]

s1 = "a(b(d,e),c(,f(g,)))"
t1 = 
    Node 'a'
        (Node 'b'
            (Node 'd' Empty Empty)
            (Node 'e' Empty Empty))
        (Node 'c' 
            Empty 
            (Node 'f' 
                (Node 'g' Empty Empty) 
                Empty))
                
s2 = "x(y,a(,b))"
t2 = 
    Node 'x' 
        (Node 'y' Empty Empty) 
        (Node 'a' 
            Empty 
            (Node 'b' Empty Empty))


s3 = "3(4(8(9,1(,2)),),)"
t3 = Node '3' (Node '4' t4 Empty) Empty
t4 = 
  Node '8' 
    (Node '9' Empty Empty) 
    (Node '1' 
        Empty 
        (Node '2' Empty Empty))
```

##Hints
1. Solve the problem for just one Tree type first, ```Tree Int``` for example. 


##Solutions
[Solutions](../s/s67a.md)
