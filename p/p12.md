# Problem 12

Decompress the run-length encoded list generated in Problem 11.

```
rleDecode [Run 4 1, Single 2, Run 2 5, Single 2, Single 1]
```

Result:

```
[1, 1, 1, 1, 2, 5, 5, 2, 1]
```
## Unit Test
```
import Html exposing (text)
import List


penultimate : List a -> Maybe a
penultimate list =
    -- your implementation goes here
    Nothing


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
        [ ( rleDecode [Run 4 1, Single 2, Run 2 5, Single 2, Single 1], 
            [1, 1, 1, 1, 2, 5, 5, 2, 1] )
        , ( rleDecode [Run 4 1, Single 2, Run 2 5, Single 2, Single 1], 
            [1, 1, 1, 1, 2, 5, 5, 2, 1] )
        ]
        && List.all (\(result, expect) -> result == expect)
            [ ( rleDecode [Run 4 "1", Single "2", Run 2 "5", Single 2, Single 1], 
                ["1", "1", "1", "1", "2", "5", "5", "2", "1"] )
            ]
```

## Hints

##Solutions 
[Solutions](problem_12_solutions.md)