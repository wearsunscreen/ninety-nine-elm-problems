# Problem 41

Find all even numbers within a range which are the sum of two prime numbers that are both greater than 50.

```
import Html exposing (text)

goldbachGT : Int -> Int -> Int -> List (Int, Int) 
goldbachGT low high limit = 
-- your implementation goes here

main = 
  text 
  <| toString 
  <| goldbachGT 1 2000 50   
```
Example result:
```
[(73,919),(61,1321),(67,1789),(61,1867)]
```


