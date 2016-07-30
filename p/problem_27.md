# Problem 27

Group the elements of a set into disjoint subsets.

a) In how many ways can a group of 9 people work in 3 disjoint subgroups of 2, 3 and 4 persons? Write a function that generates all the possibilities and returns them in a list.

We do not want permutations of the group members; that is ```["Al", "Bea"]``` is the same as ```["Bea", "Al"]```. However, we make a difference between ```[["Al", "Bea"], ["Cal", "Dee"] ...]``` and ```[["Cal", "Dee"], ["Al", "Bea"] ...]```.

You may find more about this combinatorial problem in a good book on discrete mathematics under the term "multinomial coefficients".

```
import Html exposing (text)
import List

members = ["Al", "Bea", "Cal", "Dee", "Ed", "Flip", "Gary", "Hugo", "Ida"]

group225 :  List a -> List (List (List a))
group225 list = 
-- your implementation goes here

main = 
  text 
  <| toString 
  <| group225 members
```

b) Generalize the above predicate in a way that we can specify a list of group sizes and the predicate will return a list of groups.

```
import Html exposing (text)
import List

members = ["Al", "Bea", "Cal", "Dee", "Ed", "Flip", "Gary", "Hugo", "Ida"]

group : List Int -> List a -> List (List (List a))
group counts list = 
-- your implementation goes here

main = 
  text 
  <| toString 
  <| group [2, 2, 5] members
```

