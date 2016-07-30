# Problem 33 Solutions

## Solution 1
```
coprime :  Int -> Int -> Bool
coprime a b = 
    gcd a b == 1


gcd : Int -> Int -> Int 
gcd a b =
    if b == 0 then  
        abs a
    else
        gcd b (a % b)
```
[Back to problem](problem_33.md)