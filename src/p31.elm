module Main exposing (..)

import Html


isPrime : Int -> Bool
isPrime n =
    if n < 2 then
        False
    else
        eratos (abs n) (List.range 2 (n // 2))


eratos : Int -> List Int -> Bool
eratos n cs =
    case cs of
        [] ->
            True

        x :: xs ->
            if n % x == 0 then
                False
            else
                eratos n (List.filter (\y -> (y % x) /= 0) xs)


main : Html.Html a
main =
    Html.text <|
        case test of
            0 ->
                "Your implementation passed all tests."

            1 ->
                "Your implementation failed one test."

            x ->
                "Your implementation failed " ++ (toString x) ++ " tests."


test : Int
test =
    List.length <|
        List.filter (\( result, expect ) -> result /= expect)
            [ ( isPrime 36, False )
            , ( isPrime 10, False )
            , ( isPrime -1, False )
            , ( isPrime 1, False )
            , ( isPrime 0, False )
            , ( isPrime 120, False )
            , ( isPrime 2, True )
            , ( isPrime 23, True )
            , ( isPrime 6000, False )
            , ( isPrime 7919, True )
            , ( isPrime 7911, False )
            , ( isPrime 63247, True )
            , ( isPrime 63249, False )
            ]
