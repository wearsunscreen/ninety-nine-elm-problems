# Problem 36 Solutions

##Solution 1

Combine code from problems [9](problem_9.md), [10](problem_10.md) and [35](problem_35.md).
```
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


primeFactors : Int -> List Int
primeFactors n =
    if n < 2 then
        []
    else
        let
            prime =
                Maybe.withDefault 0
                    <| List.head
                    <| dropWhile (\x -> n % x /= 0) [2..n]
        in
            prime :: (primeFactors <| n // prime)


takeWhile : (a -> Bool) -> List a -> List a
takeWhile predicate xs =
    case xs of
        [] ->
            []

        hd :: tl ->
            if (predicate hd) then
                hd :: takeWhile predicate tl
            else
                []


dropWhile : (a -> Bool) -> List a -> List a
dropWhile predicate list =
    case list of
        [] ->
            []

        x :: xs ->
            if (predicate x) then
                dropWhile predicate xs
            else
                list
```

[Back to problem](problem_36.md)