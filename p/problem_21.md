# Problem 21

Insert an element at a given position into a list.

##Example
```
insertAt ['E', 'm'] 2 'l' == ['E', 'l', 'm']
```

## Unit Test
```
import Html exposing (text)
import List


insertAt : List a -> Int -> a -> List a
insertAt xs n v =
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
        [ ( insertAt [1, 2, 5, 5, 2, 1] 2 99, [1, 99, 2, 5, 5, 2, 1] )
        , ( insertAt [1..14] 3 99, [1, 2, 99, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14])
        , ( insertAt [1..5] 6 99, [1, 2, 3, 4, 5, 99])
        , ( insertAt [1..5] 0 99, [99, 1, 2, 3, 4, 5])
        , ( insertAt [1..5] -1 99, [99, 1, 2, 3, 4, 5])
        , ( insertAt [1..5] 1 99, [99, 1, 2, 3, 4, 5])
        ]
        && List.all (\(result, expect) -> result == expect)
            [( insertAt ["1", "2", "3", "4", "5"] 2 "x", ["1", "x", "2", "3", "4", "5"] )]
```

## Hints
1. Try using split from [Problem 17](problem_17.md)
2. The core package List has what you need.
3. Recursion can solve this. 


##Solutions 
[Solutions](problem_21_solutions.md)