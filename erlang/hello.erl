% Simple Erlang Hello World program

-module(hello).
-export([main/0]).

main() ->
    io:format("Hello, World from Erlang!~n").
