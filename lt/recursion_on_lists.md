# Recursion on Lists

## Example 1

Let's use [Problem 4](/../p/p04.md) as a simple example of recursing  through a list. 

```elm
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

## Example 2

Frequently when recursing over a list, you will build up a new list to return as a result. [Problem 5](../p/p05.md "Problem 5") builds a new list in reverse order from it's input. 

```elm
myReverse : List a -> List a
myReverse list =
    case list of
        [] ->
            []

    x :: xs ->
        (myReverse xs) ++ [x]
``` 

## Problems to solve using recursion

[Problem 14](../p/p14.md "Problem 14") - Use recursion to duplicate each item of a list using recursion and ```(::)```.

[Problem 15](../p/p15.md "Problem 15") - Use recursion to repeat a specified number of times each item of a list using recursion and ```(::)``` and ```List.repeat```.

[Extra 1](../p/e01.md) - [Pass a function](/passing_functions.md) to remove some elements from the front of a list.

[Extra 2](../p/e02.md) - Pass a function to remove some elements from the back of a list.

[Problem 18](../p/p18.md) - Use `List.take` and `List.drop` to take a portion of a list





