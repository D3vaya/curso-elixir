defmodule Estado do
  def contador() do
    value = Process.get(:valor) || 0

    receive do
      {:get, pid} ->
        send(pid, value)

      {:inc} ->
        Process.put(:valor, value + 1)

      {:dec} ->
        Process.put(:valor, value - 1)

      {:reset} ->
        Process.put(:valor, 0)
    end

    contador()
  end
end
