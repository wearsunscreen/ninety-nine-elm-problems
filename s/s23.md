# Problem 23 Solutions

## Solution 1
```
duplicate : List a -> List a
duplicate list =
    case list of
        [] -> 
            []
            
        x :: xs ->
            x :: x :: duplicate xs
```

[Back to problem](problem_23.md)