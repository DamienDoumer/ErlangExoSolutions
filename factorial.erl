- module(factorial).
-compile(export_all).
-mera("Boss").

fact(0) -> 1;
fact(N) -> N * fact(N-1).