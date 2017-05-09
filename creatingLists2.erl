%Create Lists.

-module (creatingLists2).
-export ([create/1]).
-author("DamienDoumer").

create(0) -> [];
create(N) -> create(N, 1, []).

create(N, M, List) when M =< N -> create(N, M+1, [M|List]);
create(N, M , List) when M > N -> List.