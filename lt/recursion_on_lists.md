# Recursion on Lists

Let's use [Problem 4](/../p/p04.md) as a simple example of recursing  through a list. 

```
countElements : List a -> Int
countElements list =
    case list of
        [ ] 
            -> 0

         hd :: tl 
            -> 1 + countElements tl
```
When recursing over a list's items you will often use the ```x :: xs``` cons construction to identify the head and the tail. You can use the head as a value then pass the tail to the same function. In this example we ignore the list item value, adding 1 for each element regardless of its value. 

To avoid an infinite loop, there must be a case where the function is not called, bringing an end to the recusion stack. Frequently, as in this example, that is the empty list.

Another example 

## Problem 14

`duplicate : List a -> List a`

Solve [Problem 34](../p/p34.md "Problem 4") using recursion and \(::\)

## Problem 5

`myReverse : List a -> List a`
Solve [Problem 5](../p/p05.md "Problem 4") using recursion and \(++\)

## 

