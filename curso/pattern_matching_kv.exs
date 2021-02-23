mapa = %{a: 1, b: 2}
#output %{a: 1, b: 2}
${} = mapa
#output %{a: 1, b: 2}
%{a: 1} = mapa
#output %{a: 1, b: 2}
%{a: 3} = mapa
#output (MatchError)
