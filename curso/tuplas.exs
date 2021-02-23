defmodule TuplasExample do
  # Pattern Matching
  def print({:ok, x}) when is_tuple(x) do
    IO.puts("Todo fue bien : #{x}")
  end

  def print({:error, _}) when is_tuple(x) do
    IO.puts("Algo salio mal")
  end
end
