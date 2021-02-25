defmodule Decal do
  def calculadora do
    receive do
      {pid, :+, a, b} -> send(pid, a + b)
      {pid, :-, a, b} -> send(pid, a - b)
      {pid, :x, a, b} -> send(pid, a * b)
      {_pid, :/, _a, 0} -> exit("division por cero, se cancela el proceso")
      {pid, :/, a, b} -> send(pid, a / b)
    end

    calculadora()
  end
end
