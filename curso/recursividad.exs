defmodule Recursive do

  def factorial(0) do
    1
  end

  def factorial(n) do
    n * factorial(n-1)
  end
end

IO.puts(Recursive.factorial(5))

defmodule RecursividadListas do

  def dobles([]), do: []

  #def dobles([head | tail]), do: [head * 2 | dobles(cola)]

  def dobles([head | tail]) do
    IO.inspect(head)
    [head * 2 | dobles(tail)]
  end

  def pares([]), do: []
  def pares([head | tail]) when rem(head, 2) == 0, do: [head | pares(tail)]
  def pares([head | tail]), do: pares(tail)
end
list = [1, 2, 3, 4]
IO.puts(RecursividadListas.pares(list))
IO.puts(RecursividadListas.dobles(list))
