defmodule Impuestos do
  def impuesto(precio, tipo) do
    Impuestos.porcentaje(tipo) * precio
  end

  def total(precio, tipo) do
    (1 + porcentaje(tipo))* precio
  end

  defp porcentaje(tipo) do
    cond do
      tipo == :normal -> 0.21
      tipo == :reducido -> 0.10
      tipo == :super_normal -> 0.04
    end
  end
end

IO.puts(Impuestos.total(10, :normal))
