# Problem 31 Solutions

## Solution 1
Sieve of Eratosthenes. 
```
isPrime : Int -> Bool
isPrime n = 
    if n < 2 then
      False
    else
      eratos (abs n) [2..(n // 2)]


eratos : Int -> List Int -> Bool
eratos n cs = 
   case cs of
       [] -> True
       
       x::xs ->
         if n % x == 0 then
           False
         else
           eratos n (List.filter (\y -> (y % x) /= 0) xs)   
```

[Back to problem](problem_31.md)