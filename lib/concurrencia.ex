defmodule Concurrencia do
  def saludar() do
    receive do
      {pid, x} -> send(pid, "hola, #{x}")
    end

    saludar()
  end
end
