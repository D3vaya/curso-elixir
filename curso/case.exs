exp = nil
ouput = case exp do
  {:ok, x } when is_number(x) -> "Ha dicho #{x}"
  {:ok, x}    -> "Ha resuelto correctamente con #{x}"
  {:error, _} -> "no ha resulto bien"
  _ -> "Matchin default"
end

IO.puts(ouput)


x = 5
^x = 5
{:ok, ^x, a} = {:ok, 5, 0}
x = 4
{:ok, ^x, a} = {:ok, 5, 0}
