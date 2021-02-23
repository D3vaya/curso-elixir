defmodule Calculadora do
  # suma/2
  def sumar(a, b) do
    a + b
  end

  def restar(a, b) do
    a - b
  end

  def multiplicar(a, b) do
    a * b
  end

  def dividir(_a, 0)do
    :inf
  end

  def dividir(a, b) when is_number(a) and is_number(b) do
    a / b
  end

  def dividir(_a, _b) do
    :invalid
  end

end
