# los mapas son estructuras asociativas

%{}
# output %{}

%{:dia => "lunes"}
# output %{:dia => "lunes"}
%{:dos, 2, uno: 1}

%{1 => "lunes", 2 => "martes"}
# output %{1 => "lunes", 2 => "martes"}

mapa = %{1 => "lunes", 2 => "martes"}
mapa[1]
# output "lunes"

mapa = %{:dia => "lunes"}
mapa[:dia]
# output "lunes"
mapa.dia
# output "lunes"
