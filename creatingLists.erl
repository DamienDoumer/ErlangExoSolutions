%Create Lists.
-module (creatingLists).
-export ([create/1]).
-author("DamienDoumer").

create(0) -> [];
create(N) -> create(N, []).

create(N, List) when N>0 -> create(N-1, [N|List]);
create(0, List) -> List.