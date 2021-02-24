list = [1, 2, 3, 4, 5, 6]

# FILTER
Enum.filter(list, fn x -> x > 3 end)
#output [4, 5, 6]

# MAP
Enum.map(list, fn x -> x * 2 end)
#output [2, 4, 6, 8, 10, 12]

# REDUCE
Enum.reduce(list, 0, fn x, acc -> x + acc end )
#output 21

# PIPELINE

list
  |> Enum.filter(fn x -> rem(x, 2) == 0 end)
  |> Enum.map(fn x -> 2 * x end)
  |> Enum.reduce(0, fn x , acc -> x + acc end)
