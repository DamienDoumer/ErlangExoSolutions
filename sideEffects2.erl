%Test even
printEven(N, M) when  M >= N -> io:format("~w, ", [M]);
printEven(N, M) when M < N -> 

	if(M band 1) == 0 -> printEven(N, M + 1),
		io:format("~w, ", [M])
	end.

	