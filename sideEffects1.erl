-module (sideEffects1).
-author("DamienDoumer").
-export ([printN/1]).

printN(N) -> printN(N, 1, 1).

printN(N, M) when  M >= N -> io:format("~w, ", [M]);
printN(N, M) when M < N -> 
	printN(N, M + 1, M),
	io:format("~w, ", [M]).
	