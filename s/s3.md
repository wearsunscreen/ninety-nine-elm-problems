# Problem 3 Solutions

###Solution 1:
Using recursion.

```
elementAt : List a -> Int -> Maybe a
elementAt xs n =
    if n <= 0 then
        Nothing
    else if n == 1 then
        List.head xs
    else
        List.tail xs `Maybe.andThen` (\t -> elementAt t (n-1))
```

###Solution 2:
Using List.drop.

```
elementAt : List a -> Int -> Maybe a
elementAt xs n =
  if idx < 0 then
    Nothing
  else
    List.head <| List.drop n xs
```
[Back to Problem 3](problem_3.md)
