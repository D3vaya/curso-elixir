defmodule Calculadora do
  # suma/2
  def suma(a, b) do
    IO.puts("Me estas solicitando que sume #{a} y #{b}")
    a + b
  end
end


IO.inspect(Calculadora.suma(1,2))
