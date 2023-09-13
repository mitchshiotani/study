-module(math_functions).
-export([filter/2]).

filter(F,L) -> [ Element || Element <- L, F(Element)].