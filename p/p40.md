# Problem 40

[Goldbach's conjecture](https://en.wikipedia.org/wiki/Goldbach%27s_conjecture) says that every positive even integer greater than 2 is the sum of two prime numbers. Example: 28 = 5 + 23. It has been numerically confirmed up to very large numbers but remains unproven.

Return two prime numbers that sum up to a given even integer.

```
goldbach 100 == (29, 71)
```


## Unit Test

```elm

import Html
import List
import Maybe


goldbach : Int -> Maybe (Int, Int)
goldbach n =
    if isOdd n || n < 3 then
        Nothing
    else
        goldbach' n <| primesInRange 2 n
        
        
goldbach' : Int -> List Int -> Maybe (Int, Int)
goldbach' n ps =
    case ps of
        [] ->
            Nothing
            
        p1 :: xs ->
            let
                ps' = dropWhile (\y -> p1 + y < n) ps
                ps'' = takeWhile (\y -> p1 + y == 0) ps'
            in
                case List.head ps'' of
                    Nothing ->
                        goldbach' n xs
                        
                    Just p2 ->
                        if p2 + p1 == n  then
                            Just (p1, p2)
                        else
                            goldbach' n xs


primesInRange : Int -> Int -> List Int
primesInRange low high =
    if high < low || high < 2 then
      []
    else
      dropWhile (\x -> x < low) <| primes high


-- find all primes up to n
primes : Int -> List Int
primes n = 
    if n < 2 then
        []
    else
        eratos [2..n] []


-- sieve of Eratosthenes
-- remove all the the non-primes from a list
eratos : List Int -> List Int -> List Int
eratos candidates primes =  
   case candidates of
       [] -> List.reverse primes
       
       x::xs ->
           let 
               cs = List.filter (\y -> (y % x) /= 0) xs
           in
               eratos cs (x :: primes)


dropWhile : (a -> Bool) -> List a -> List a
dropWhile predicate list =
    case list of
      []      -> []
      
      x::xs   -> 
          if (predicate x) then 
              dropWhile predicate xs
          else 
              list
              

takeWhile : (a -> Bool) -> List a -> List a
takeWhile predicate list =
    case list of
      []      -> []
      
      x::xs   -> 
          if (predicate x) then 
              x:: takeWhile predicate xs
          else 
              list
              
main' = Html.text <| toString <| testGoldbach 10 (Just (3,7))

main =
    Html.text
        (if (test) then
            "Your implementation passed all tests."
         else
            "Your implementation failed at least one test."
        )


test : Bool
test =
    List.all (\n -> testGoldbach n <| goldbach n)
        [ 4, 10, 12, 14, 16, 18, 20, 100, 222, 120, 2444, 24444, 33336, 71000 ]
        && List.all (\n -> (goldbach n) == Nothing) [-99999, -1, 0, 1, 99, 9999]

        
testGoldbach : Int -> Maybe (Int, Int) -> Bool
testGoldbach n result =
    case result of
        Nothing -> False
        
        Just (p1, p2) ->
            if n < 3 && result /= Nothing then
                False
            else if isOdd n then
                False
            else if p1 + p2 /= n then
                False
            else if not (isPrime p1) || not (isPrime p2) then
                False
            else 
                True


-- The core library function Arithmetic.isOdd is not available
-- on elm-lang.org/try, so we'll recreate it here
isOdd : Int -> Bool
isOdd n =
    n % 2 /= 0
    
    
isPrime : Int -> Bool
isPrime n = 
    if n < 2 then
      False
    else
      List.member n <| primesInRange 2 n
      
```

##Hints


## Solutions
[Solutions](problem_40_solutions.md)

