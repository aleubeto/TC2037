defmodule ConjuntoPotencia do

  # caso base: conjunto vació retorna conjunto con conjunto vacío
  def power([]), do: [[]]

  # función recursiva
  def power([hd|tl]) do
    x = power(tl)
    x ++ aux(x, hd)
  end

  # función auxiliar que hace unión de 'e' a cada elemento dentro de 'conj'
  def aux(conj, e) do
    Enum.map(
      conj,
      fn elem ->
        elem ++ [e]
      end)
  end

end