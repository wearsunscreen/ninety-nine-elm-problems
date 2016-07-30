# Problem 19 Solutions

## Solution 1
```
rotate : List a -> Int-> List a
rotate list rot =
  let 
    r = rot % (List.length list)
  in
    if r >= 0 then
      List.drop r list ++ List.take r list
    else
      List.take (abs r) list ++ List.drop (abs r) list
```

[Back to problem](problem_19.md)