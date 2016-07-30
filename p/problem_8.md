# Problem 8
Write a function to remove consecutive duplicates of list elements. 

## Example
```elm
noDupes [1, 1, 2, 2, 3, 3, 3, 4, 5, 4, 4, 4, 4]
    == [1, 2, 3, 4, 5, 4]
```
##Unit Test
```elm
import Html exposing (text)
import List 


noDupes : List a -> List a
noDupes xs =
    -- your implementation goes here
    []


main =
    text
        (if (test) then
            "Your implementation passed all tests."
         else
            "Your implementation failed at least one test."
        )


test : Bool
test =
    List.all ((==) True)
        [ noDupes [1, 1, 1, 1, 2, 5, 5, 2, 1] == [1, 2, 5, 2, 1]         
        , noDupes [2, 1, 1, 1] == [2, 1] 
        , noDupes [2, 2, 2, 1, 1, 1] == [2, 1] 
        , noDupes [1] == [1] 
        , noDupes [] == []
        , noDupes [ "aa", "aa", "aa" ] == ["aa"]
        , noDupes [ "aab", "b", "b", "aa" ] == ["aab", "b", "aa"] 
        ]
```

## Hints
1. How would you copy a list using foldr? How would you modify the function passed to foldr only copy new values?
2. How would you drop the head of the list if it's a duplicate? Can you apply that recursively to solve the problem?

## Solutions
[Solutions](problem_8_solutions.md)