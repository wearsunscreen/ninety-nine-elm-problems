# Map

```List.map``` applies a provided function to all elements of a list. 

##Example
```elm
List.map negate [1, 2, -3] == [-1, -2, 3]
List.map abs [1, 2, -3] == [1, 2, 3]
```

##Problems to solve using List.map

[Problem 4](../p/p04.md) - Count the elements using map. Hint: after passing a simple function to map, you can get the count by calling ```List.sum```. 

[Problem 10](../p/p10.md) - Convert a list of lists to a list of lengths.


# ConcatMap

```List.concatMap``` applies a function that returns a list to the elments of a list, then concatenates the resulting list of lists into a single list.

[Problem 14](../p/p14.md) - Duplicate each element of a list.

[Problem 15](../p/p15.md) - Repeat elements of a list.

[Problem 7](p/p07.md) - Flatten nested lists.

[Problem 12](../p/p12.md) - Decode a run-length encoded list.

[Problem 72](../p/p72.md) - Collect the nodes of a multiway tree into a list.
