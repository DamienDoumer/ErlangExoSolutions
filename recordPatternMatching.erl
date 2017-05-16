-module(recordPatternMatching).
-compile(export_all).

-record(user, {id, name, group, age}).

%% Use pattern matching to filter.
admin_panel(#user{name=Name, group=admin}) ->
Name ++ " is allowed!";
admin_panel(#user{name=Name}) ->
Name ++ " is not allowed".
%% Can extend user without problem.
adult_section(U = #user{}) when U#user.age >= 18 ->
%% Show stuff that can't be written in such a text.
allowed;
adult_section(_) ->
%% Redirect to Sesame Street site.
forbidden.