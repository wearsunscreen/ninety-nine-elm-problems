# Problem 16 Solutions
## Solution 1
```
dropNth : List a -> Int -> List a
dropNth list n =
    case n of
        0 ->
            list
        _ ->
            case list of 
                [] -> []
        
                x :: xs ->
                    (List.take (n - 1) list) ++ (dropNth (List.drop n list) n)

```

[Back to problem](problem_15.md)
