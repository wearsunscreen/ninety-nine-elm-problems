*This page will go away in the final version*
# Utility Functions

#### dropWhile : (a -> Bool) -> List a -> List a
```
dropWhile : (a -> Bool) -> List a -> List a
dropWhile predicate list =
    case list of
      []      -> []
      
      x::xs   -> 
          if (predicate x) then 
              dropWhile predicate xs
          else 
              list
```

####takeWhile : (a -> Bool) -> (List a) -> (List a)

```
takeWhile : (a -> Bool) -> (List a) -> (List a)
takeWhile predicate xs =
  case xs of
    [] -> 
        []
        
    hd::tl  -> 
        if (predicate hd) then
            hd :: takeWhile predicate tl
        else 
            []
```            
####primes : Int -> List Int
```
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
```

####infix operator for Maybe.withDefault 
####(?:) : Maybe a -> a -> a

```elm
(?:) : Maybe a -> a -> a
(?:) maybe default =
  Maybe.withDefault default maybe

infixr 9 ?:
```