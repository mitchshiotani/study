-module(geometry).

-export([area/1, perimeter/1, my_tuple_to_list/1]).
-export([my_time_func/1]).

area({rectangle, Width, Height}) -> Width * Height;
area({square, Side}) -> Side * Side;
area({circle, Radius}) -> 3.14 * Radius * Radius;
area({right_angle_triangle, Width, Height}) -> (Width * Height) / 2.

perimeter({rectangle, Width, Height}) -> Width * 2 + Height * 2;
perimeter({square, Side}) -> Side * 4;
perimeter({circle, Radius}) -> 3.14 * Radius * 2.

% my_tuple_to_list(Tuple) -> 
%   LenOfTuple = tuple_size(Tuple),
%   Index = LenOfTuple,
%   ResultList = [ResultList|element(Index,Tuple)],
%   .

% get length of tuple
% do for loop from 1 to length
  % get element from tuple at that 'index'
  % pop it into the list
% return list

my_tuple_to_list(Tuple) -> [ element(Index,Tuple) || Index <- lists:seq(1, size(Tuple))].

my_time_func(F) -> 
  Start = erlang:monotonic_time(millisecond),
  F(),
  End = erlang:monotonic_time(millisecond),
  End - Start
  .