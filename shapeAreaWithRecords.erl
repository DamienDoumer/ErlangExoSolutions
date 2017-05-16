-module(shapeAreaWithRecords).
-compile(export_all).
-record(circle, {radius}).
-record(rectangle, {length, width}).
-record(triangle, {height, base}).

circle_area(#circle{radius = Radius}) -> (Radius * Radius) * 3.14.
rectangle_area(#rectangle{length = Length, width = Width}) -> (Length * Width) + 2.
triangle_area(#triangle{height = Height, base = Base}) ->
    0.5 * Base * Height.

%%How to test:
% > rr(shapeAreaWithRecords).
% > shapeAreaWithRecords:rectangle_area(#rectangle{length = 21, width = 2}).
% > shapeAreaWithRecords:circle_area(#circle{radius = 10}).
% > shapeAreaWithRecords:triangle_area(#triangle{ height = 10, base = 12 }).
