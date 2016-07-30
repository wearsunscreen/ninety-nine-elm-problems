# Problem 6 Solutions

### Solution #1
```
isPalindrome : List a -> Bool
isPalindrome xs =
    List.reverse xs == xs
```

###Solution #2:
This makes half as many compares. 
```
isPalindrome : List a -> Bool
isPalindrome xs =
    let 
        s = (List.length xs) // 2
    in
        List.take s xs == List.take s (List.reverse xs)
```

[Back to Problem 6](problem_6.md)