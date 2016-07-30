# Problem 10 Solutions

### Solution #1
1. Use ```List.map toTuples``` to convert from ```List (Int, a)``` to ```List (Int, Maybe a)```. 
2. Use ```removeNothings``` to convert to ```List (Int, a)```. 


```elm
runLengths : List (List a) -> List (Int, a)
runLengths xss =
    removeNothings (List.map toTuples xss)
    

removeNothings : List (Int, Maybe a) -> List (Int, a) 
removeNothings xs = 
  case xs of 
    [] -> []
    [(c, Nothing)] -> []
    [(c, Just y)] -> [(c,y)]
    (c, Nothing) :: ys -> removeNothings ys
    (c, Just y) :: ys -> (c, y) :: removeNothings ys
  


toTuples : List a -> (Int, Maybe a)
toTuples xs =
    case xs of
        [] -> 
            (0, Nothing)
        
        y::ys -> 
            (List.length xs, Just y)
```

[Back to Problem 10](problem_10.md)