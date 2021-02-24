defmodule Empresa.Writer do
  alias Empresa.Empleado, as: Empleado
  import Jason, only: [encode: 1]

  # podriamos usar una guarda para validar que el sueldo sea numerico
  defp to_map(%Empleado{nombre: n, posicion: p, sueldo: s}) do
    %{"nombre" => n, "posicion" => p, "sueldo" => s}
  end

  defp to_map(_x) do
    nil
  end

  defp to_json(m) do
    {:ok, json_version} = encode(m)
    json_version
  end

  defp dump(str) do
    File.write("empleados.json", str)
  end

  def write(list_empleados) do
    list_empleados
    |> Enum.map(&to_map/1)
    |> Enum.filter(fn
      nil -> false
      _ -> true
    end)
    |> to_json()
    |> dump()
  end
end

# e1 = %Empresa.Empleado{nombre: "JC", posicion: "DevMamager", sueldo: 30000}
# e2 = %Empresa.Empleado{nombre: "Rod", posicion: "Frontedn", sueldo: 40000}
# e3 = %Empresa.Empleado{nombre: "Nico", posicion: "Backedn", sueldo: 80000}
# e4 = %Empresa.Empleado{nombre: "Ado", posicion: "DevOps", sueldo: 50000}
