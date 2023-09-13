-module(ch5).
-export([json_file_to_map/1]).

% read file to get json binary
% convert to Erlang map
%

json_file_to_map(JsonFilePath) -> 
  JsonBin = file:read_file(JsonFilePath),
  jsone:decode(JsonBin, []).
