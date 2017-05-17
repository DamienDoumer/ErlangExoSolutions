- module(show_expression_and_result_with_macros).
- compile(export_all).

- define(SHOW_EVAL(ShowMode, Expression), 
                    case ShowMode of
                     true ->
                        io:format("~p = ~p~n", [??Expression, Expression]);
                    false -> 
                        io:format("~p~n", [Expression])
                    end ).

demo_show_eval(Mode) -> ?SHOW_EVAL(Mode, 2 + 3).

% Returns the result of expression and the expression its self, if the ShowMode is on