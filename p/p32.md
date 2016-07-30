# Problem 32

Determine the greatest common divisor of two positive integer numbers. Use [Euclid's algorithm](https://en.wikipedia.org/wiki/Euclidean_algorithm).

```
import Html exposing (text)

gcd :  Int -> Int -> Int
gcd n n' = 
-- your implementation goes here

main = 
  text 
  <| toString 
  <| gcd 36 63  
  
```

Result
```
9
```

## Unit Test
```
import Html 
import List
import Maybe


gcd : Int -> Int -> Int 
gcd a b =
    if b == 0 then  
        a
    else
        gcd b (a % b)
        

main =
    Html.text
        (if (test) then
            "Your implementation passed all tests."
         else
            "Your implementation failed at least one test."
        )


test : Bool
test =
    List.all (\(result, expect) -> result == expect)
        [ ( gcd 36 63, 9 )
        , ( gcd 10 25, 5 )
        , ( gcd 120 120, 120)
        , ( gcd 2 12, 2)
        , ( gcd 23 37, 1)
        , ( gcd 45 330, 15)
        , ( gcd 24528 65934, 6)
        , ( gcd 120 -120, 120)
        , ( gcd -2 12, 2)
        , ( gcd 37 23, 1)
        ]   
```
##Hints
1. This is easy!

[Solutions](problem_32_solutions.md)