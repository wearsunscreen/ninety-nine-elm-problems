# Problem 46 Solutions

## Solution 1

```elm
-- True if and only if a and b are true
and' : Bool -> Bool -> Bool
and' a b =
    a && b
    
    
-- True if either a or b are true
or' : Bool -> Bool -> Bool
or' a b =
  a || b
    
    
-- True either a or b are false
nand' : Bool -> Bool -> Bool
nand' a b =
    not (a && b)
    
    
-- True if and only if a and b are false
nor' : Bool -> Bool -> Bool
nor' a b =
    not (a || b)
    
    
-- True if a or b is true, but not if both are true
xor' : Bool -> Bool -> Bool
xor' a b =
      not (a == b) 
    
    
-- True if a is false or b is true
implies : Bool -> Bool -> Bool
implies a b =
      if a then b else True
    
    
-- True if both a and b are true, or both a and b ar false
equivalent : Bool -> Bool -> Bool
equivalent a b =
      a == b
   
                    
truthTable : (Bool -> Bool -> Bool) -> List (Bool, Bool, Bool)
truthTable f = 
    -- your implementation goes here
    [ (True, True, f True True)
    , (True, False, f True False)
    , (False, True, f False True)
    , (False, False, f False False)
    ]
```

## Solution 2

It is common for functional programmers to write functions as a composition of other functions, never mentioning the actual arguments they will be applied to. This is called "[pointfree style](https://wiki.haskell.org/Pointfree)". 


```elm 
-- True if and only if a and b are true
and' : Bool -> Bool -> Bool
and' =
    (&&)
    
    
-- True if either a or b are true
or' : Bool -> Bool -> Bool
or' =
  (||)    
    
-- True if both a and b are true, or both a and b are false
equivalent : Bool -> Bool -> Bool
equivalent =
      (==)
```

[Back to problem](../p/p46.md)             
