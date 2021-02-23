defmodule Anonimas do
  def operar(func) do
    func.(5, 3)
  end
end

suma = fn a, b -> a * b end
resta = fn a, b -> a - b end

IO.puts(Anonimas.operar(suma))
IO.puts(Anonimas.operar(resta))

IO.puts(Anonimas.operar(fn a,b -> rem(a,b) end))
