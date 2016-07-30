# Problem 5 Solutions


###Solution #1:

```
myReverse : List a -> List a
myReverse xs =
    List.foldl (::) [] xs
```

[Back to Problem 5](problem_5.md)