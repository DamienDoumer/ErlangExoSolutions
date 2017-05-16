-module (concatenate).
-export ([conc/1, expand/1]).

conc([]) -> [];
conc(L) -> conc(L, []).

conc([], AccL) -> AccL;
conc([H|T], AccL) -> conc(T, [T|H]).

%To expand a list
expand([]) -> [];
expand(List) -> expand(List, []).

expand([H|T], Expanded) -> expand(T, [H|Expanded]);
expand([], Expanded) -> Expanded.