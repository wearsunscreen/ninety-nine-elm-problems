# Problem 28.a Solutions

##Solution 1
Could it be any simpler?
```
sortByListLengths : List (List a) -> List (List a) 
sortByListLengths xs = 
    List.sortBy List.length xs
```
[Back to problem](problem_28.md)