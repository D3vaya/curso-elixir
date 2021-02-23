# IF
edad = 20
mensaje = if edad >= 18 do
  "Mayor de edad"
else
  "Menor de edad"
end
IO.puts(mensaje)

# UNLESS

admin = :false

unless admin do
  IO.puts("ATENCION: No es admin")
else
  IO.puts("ATENCION: Si es ADMIN")
end

# COND

lluvia = 100
mensaje = cond do
  lluvia == 0 -> "No ha llovido"
  lluvia < 30 -> "Ha llovido un poco"
  lluvia < 60 -> "Ha llovido un rato"
  lluvia < 90 -> "Ha llovido bastante"
  true        -> "Diluvio"
end
IO.puts(mensaje)
