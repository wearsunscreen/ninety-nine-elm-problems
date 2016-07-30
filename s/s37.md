# Problem 37 Solutions
##Solution 1

```
phi : Int -> Int 
phi n = 
    if n < 1 then 
        0   
    else
        List.product 
            <| List.map (\(p,m) -> (p - 1) * p ^ (m - 1))
            <| primeFactorsM n


primeFactorsM : Int -> List (Int, Int)
primeFactorsM n =
    toTuples <| primeFactors n 
    

toTuples : List a -> List ( a, Int )
toTuples fs =
    case fs of
        [] ->
            []

        x :: xs ->
            ( x, List.length (takeWhile (\y -> y == x) fs) )
                :: toTuples (dropWhile (\y -> y == x) fs)
```

[Back to problem](problem_37.md)