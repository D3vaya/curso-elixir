defmodule Perfil do
  defstruct [:nombre, :pais, :bebida, :comida, :animal]
  # valores por defecto
  defstruct [:nombre, :pais, :bebida, comida: "Lentejas", animal: "Gato"]
end
