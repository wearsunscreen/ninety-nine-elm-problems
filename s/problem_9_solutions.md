# Problem 9 Solutions

### Solution #1
```
pack : List a -> List (List a)
pack xs =
    case xs of 
      [] -> 
        [[]]

      y :: ys ->
        pack' y [y] ys


pack' : a -> List a -> List a -> List (List a)
pack' v run xs =
      case xs of 
        [] -> 
          [run]
              
        y :: ys -> 
          if y == v then
            pack' y (y::run) ys
          else
            (run) :: pack' y [y] ys
```
            
### Solution #2
Using takeWhile and dropWhile.
```
pack : List a -> List (List a)
pack xs =
    case xs of
        [] -> 
            [[]]
        
        hd::tl -> 
            let 
                remainder = dropWhile (\x -> x == hd) tl
            in
                if List.length remainder > 0 then 
                    takeWhile (\x -> x == hd) xs :: (pack (remainder))
                else
                    [ xs ]
                    
                    
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


dropWhile : (a -> Bool) -> (List a) -> (List a)
dropWhile predicate xs =
  case xs of
    [] -> 
        []
        
    hd::tl -> 
        if (predicate hd) then
            dropWhile predicate tl
        else
            list
```

[Back to Problem 9](problem_9.md)