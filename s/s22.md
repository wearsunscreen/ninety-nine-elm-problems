# Problem 22 Solutions

## Solution 1
Yeah, you can recurse this.
```
range : Int -> Int -> List Int 
range start end = 
    -- your implementation goes here
    if start == end then
        [end]
    else
        if (start < end) then
          start :: range (start + 1) end
        else 
          start :: range (start - 1) end
```

## Solution 2
Use the range operator (..) and handle reverse order
```
range : Int -> Int -> List Int 
range start end = 
    -- your implementation goes here
    if start <= end then
        [start .. end]
    else
        List.reverse [end .. start]
```          
[Back to problem](problem_22.md)