range = 1..100

range |> Enum.map(fn x -> x * 2 end)

# STREAMS
1..10 |> Stream.map(&IO.inspect/1)
# output #Stream<[enum: 1..10, funs: [#Function<48.48559900/1 in Stream.map/2>]]>

# los streams no se procesan inmediatamente a diferencia del Enum.map
# si lo vuelvo a convertir el stream a lista, ahi si ejecuta el ciclo
1..10 |> Stream.map(&IO.inspect/1) |> Enum.to_list()
# output 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
