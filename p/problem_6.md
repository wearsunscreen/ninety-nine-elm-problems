# Problem 6
Determine if a list is a palindrome, that is, the list is identical when read forward or backward.

##Example
```elm
isPalindrome [1,2,3,2,1] == True
```

##Unit Test
```elm
import Html exposing (text)
import List 


isPalindrome : List a -> Bool
isPalindrome xs =
    -- your implementation here
    False

main =
    text
        (if (test) then
            "Your implementation passed all tests."
         else
            "Your implementation failed at least one test."
        )


test : Bool
test =
    List.all ((==) True)
        [ isPalindrome [1, 3, 5, 8, 5, 3, 1] ==  True
        , isPalindrome [2, 1] == False
        , isPalindrome [1] ==  True
        , isPalindrome [] == True
        , isPalindrome [ "aa", "bb", "aa" ] == True 
        , isPalindrome [ "aab", "b", "aa" ] == False 
        ]
```

## Hints
1. Did you solve problem 5?
2. How many elements do you need to test?

## Solutions
[Solutions](problem_6_solutions.md)