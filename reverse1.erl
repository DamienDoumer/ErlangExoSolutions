-module (reverse1).
-export ([reverse/1]).

reverse([]) -> [];
reverse(L) -> reverse(L, []).

reverse([], AccL) -> AccL;

reverse([H|T], AccL) -> reverse(T, [H|AccL]).

