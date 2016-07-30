# Problem 18 Solutions

## Solution 1
```
sublist : List a -> Int -> Int-> List a
sublist list start end =
  let 
    start' = max start 1
    end'   = min end (List.length list)
  in
    if (end' < start') || (end' < 1) then
      []
    else
      List.drop (start'-1) (List.take (end') list) 
      
```

[Back to problem](problem_18.md)