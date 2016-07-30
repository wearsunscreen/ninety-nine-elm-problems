# Problem 90

The *Eight Queens Problem* is a classical problem in computer science. The objective is to place eight queens on a chessboard so that no two queens are attacking each other; that is no two queens are in the same row, the same column, or on the same diagonal.

Represent the positions of the queens as a list of numbers 1..N. Example: [4,2,7,3,6,8,5,1] means that the queen in the first column is in row 4, the queen in the second column is in row 2, etc. Use the generate-and-test paradigm.

```
import Html exposing (text)


queens :  List (List Int)
queens = 
  -- your implementation here


main = text <| toString <| List.length queens
```

Result
```
92
```