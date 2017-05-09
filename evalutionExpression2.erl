-module (evalutionExpression2).
-export ([sum/2]).
-author("DamienDoumer").

sum(N,M) ->
	sum(N,M,0).

sum(N,M,Acc) when N =< M -> sum(N+1, M, Acc + N);
sum(N,M,Acc) -> Acc.

