# Problem 26
Generate the combinations of K distinct objects chosen from the N elements of a list

In how many ways can a committee of 3 be chosen from a group of 12 people? We all know that there are C(12,3) = 220 possibilities (C(N,K) denotes the well-known binomial coefficients). For pure mathematicians, this result may be great, but we want to really generate all the possibilities in a list.

```
combinations 3 [1..12]
```

Result:

``` 
[[1,2,3], [1,2,4], [1,2,5], ... ]
```

## Unit Test
```
import Html exposing (text)
import List
import Maybe


combinations : Int -> List a -> List (List a) 
combinations n xs = 
    -- your implementation here
    []


-- hint
tails : List a -> List (List a)
tails xs =
  case xs of
    [] ->
      []
      
    y::ys -> ys :: tails ys      


main = text <| toString <| combinations 1 [1..3]


main' =
    text
        (if (test) then
            "Your implementation passed all tests."
         else
            "Your implementation failed at least one test."
        )


test : Bool
test =
    List.all (\(result, expect) -> result == expect)
        [ ( combinations 1 [1..5], [[1, 2, 3, 4, 5]])
        , ( combinations 2 [1..3], [[1,2], [1,3], [2,3]])
        , ( combinations 2 [1..4], [[1,2], [1,3], [1,4], [2,3], [2,4], [3,4]])
        , ( combinations 0 [1..5], [])
        , ( combinations -1 [1..5], [])
        ]
        && List.all (\(result, expect) -> result == expect)
            [ ( List.length (combinations 3 [1..12]), 220)
            , ( List.length (combinations 4 [1..15]), 1365)
            ]
```

## Hints
1. How would you use a function that takes a list and returns a iterated list of its tails?

```
tails [1, 2, 3, 4]
```
Returns
```
[[2,3,4],[3,4],[4],[]]
```


## Solutions

[Solutions](problem_26_solutions.md)
