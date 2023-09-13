-module(day_one).

-export([words_in_string/1]).
-export([count_to_ten/1]).
words_in_string() ->
  0.

words_in_string(String) ->
  string:split(String, " ").
words_in_string(String) -> string:split(String, " ").

count_to_ten(0) -> null.
count_to_ten(N) -> null.
