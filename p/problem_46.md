# Problem 46

Define functions to provide the logical binary functions and, or, nand, nor, xor, implies, and equivalent. 

```
-- True if and only if a and b are true
and' : Bool -> Bool -> Bool
and' a b = 
-- your implementation goes here

-- True if either a or b are true
or' : Bool -> Bool -> Bool
or' a b =
-- your implementation goes here


-- True either a or b are false
nand' : Bool -> Bool -> Bool
nand' a b =
-- your implementation goes here


-- True if and only if a and b are false
nor' : Bool -> Bool -> Bool
nor' a b =
-- your implementation goes here


-- True if a or b is true, but not if both are true
xor' : Bool -> Bool -> Bool
xor' a b =
-- your implementation goes here


-- True if a is false or b is true
implies : Bool -> Bool -> Bool
and' a b =
-- your implementation goes here

-- True if both a and b are true, or both a and b ar false
equivalent : Bool -> Bool -> Bool
equivalent' a b =
-- your implementation goes here
```


Define a function to show a truth table for a logical expression.
```
import Html exposing (text)

truthTable : (Bool -> Bool -> Bool) -> String 
isPrime n = 
-- your implementation goes here

main = 
  text 
  <| toString 
  <| truthTable (\a b -> (and' a (or' a b)))  
```

Result
```
a=True  b=True  True
a=True  b=False True
a=False b=True  False
a=False b=False False  
```

