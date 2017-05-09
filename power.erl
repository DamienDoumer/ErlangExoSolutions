-module(power).
-compile(export_all).
-autor("DamienDoumer").

raiseTo(N, 0) -> 1;
raiseTo(N, M) -> N * raiseTo(N, M - 1).