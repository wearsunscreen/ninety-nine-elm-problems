# Problem 22

Create a list containing all integers within a given range, inclusively, allow for reverse order

##Example
```
range 8 4 == [8, 7, 6, 5, 4]
```
## Unit Test
```
import Html exposing (text)
import List


range : Int -> Int -> List Int 
range start end = 
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
    List.all (\(result, expect) -> result == expect)
        [ ( range 1 5, [1..5])
        , ( range 0 5, [0..5])
        , ( range -1 5, [-1..5])
        , ( range 5 -1, [5, 4, 3, 2, 1, 0, -1])
        , ( range 5 5, [5])
        ]
        && List.all (\(result, expect) -> result == expect)
            [( List.length (range 1 9999), 9999 )]
```

## Hints
1. Oh, I don't know, maybe recursion?
2. Range only varies from the range operator (..) by allowing reverse order.


##Solutions 
[Solutions](problem_22_solutions.md)