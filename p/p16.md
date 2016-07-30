# Problem 16

Drop every nth element from a list.

##Example
```
dropNth [1..10] 3 == [1, 2, 4, 5, 7, 8, 10]
```

## Unit Test
```
import Html exposing (text)
import List


dropNth : List a -> Int -> List a
dropNth list n =
    -- your implementation here
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
        [ ( dropNth [1, 2, 5, 5, 2, 1] 2, [1, 5, 2] )
        , ( dropNth [1..20] 3, [1, 2, 4, 5, 7, 8, 10, 11, 13, 14, 16, 17, 19, 20])
        , ( dropNth [1..5] 6, [1, 2, 3, 4, 5])
        , ( dropNth [1..5] 0, [1, 2, 3, 4, 5])
        , ( dropNth [1..5] -1, [1, 2, 3, 4, 5])
        , ( dropNth [1..5] 1, [])
        ]
        && List.all (\(result, expect) -> result == expect)
            [( dropNth ["1", "2", "3", "4", "5", "6"] 2, ["1", "3", "5"])]
```

## Hints
1. This is why [Problem 20](problem_20.md) does in front of Problem 16; add recursion, and more checking of your inputs.


##Solutions 
[Solutions](problem_16_solutions.md)