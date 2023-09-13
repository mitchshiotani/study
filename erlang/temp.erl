-module(temp).

-export([f2c/1]).
-export([c2f/1]).
-export([convert/1]).

f2c(F) ->
  5 * (F - 32) / 9.

c2f(C) ->
  9 / 5 * C + 32.

convert({c, Temperature}) ->
  c2f(Temperature);
convert({f, Temperature}) ->
  f2c(Temperature).
