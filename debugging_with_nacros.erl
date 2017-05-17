- module(debugging_with_nacros).
- compile(export_all).
- define(VALUE(Call), io:format("~p = ~p~n", [??Call, Call])).

test() -> ?VALUE([1,2,3,4]).
test_len() -> ?VALUE(length([1,2,3,4])).