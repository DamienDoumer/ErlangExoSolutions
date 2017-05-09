-module (concatenate).
-export ([conc/1]).

conc([]) -> [];
conc(L) -> conc(L, []).

conc([], AccL) -> AccL;
conc([H|T], AccL) -> conc(T, [H|T]).

