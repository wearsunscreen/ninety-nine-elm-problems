# Problem 8 Solutions


### Solution #1
```
noDupes : List a -> List a
noDupes xs =
    List.foldr noDupCons [] xs
    

noDupCons : a -> List a -> List a
noDupCons x xs =
    case List.head xs of
        Nothing -> [x]
        Just a  -> 
            if x == a then
                xs
            else
                x :: xs

```

###Solution #2:
Define a dropWhile function to remove duplicates from the head of a list, then apply it recursively.
```
noDupes : List a -> List a
noDupes list =
    case list of 
        []    -> []
        x::xs -> x :: (noDupes <| dropWhile (\u -> u == x) xs)


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

[Back to Problem 8](problem_8.md)