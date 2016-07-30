# Problem 32 Solutions

## Solution 1
```
gcd : Int -> Int -> Int 
gcd a b =
    if b == 0 then  
        a
    else
        gcd b (a % b)
```

[Back to problem](problem_32.md)