-module(quicksort).
-export([test/0, quicksort/1]).

test() ->
    A = [5,3,2,1,6],
    B = quicksort(A),
    io:format("~w~n", [B]).

quicksort([ P | A ]) ->
    quicksort([X || X <- A, X < P]) ++ [P] ++ quicksort([X || X <- A, X >= P]);
quicksort([]) -> [].