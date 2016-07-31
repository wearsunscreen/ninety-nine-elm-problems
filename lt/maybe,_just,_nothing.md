# Maybe, Just, Nothing

What is the first element of an empty list? What is the last? There is no first element, no last element of an empty list. So what should a self-respecting programming language return?
It might return such a ```NULL``` or ```undefined``` and require the programmer to check for that value. It might raise an exception it expects or even requires the programmer to handle. 

Elm promises to have no runtime exceptions. To solve this problem Elm borrows the Maybe type from Haskell. Let's take a look at its definition.
```
Type Maybe a = Just a | Nothing. 
```

We see ```Maybe``` is a union type. A ```Maybe``` must either  be a  ```Just``` or a ```Nothing```. Also it is parameterized, so we can use it for lists of any type.


#Problems
