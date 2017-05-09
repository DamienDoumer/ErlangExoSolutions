%Works 
-module (evalutionExpression1).
-export ([sum/1]).
-author("DamienDoumer").

sum(N) -> sum(N, 0).

sum(N, Acc) when N > 0 -> sum(N-1, N + Acc);
sum(0, Acc) -> Acc.

