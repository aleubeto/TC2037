defmodule ProductoCartesiano do

# FUNCIÓN PRINCIPAL 'prod'

  # delcaración de caso base
  def prod([], _), do: nil

  # declaración de función recursiva
  def prod([h|t], conj) do
    IO.inspect prod1(h, conj, [])
    prod(t, conj)
  end

# FUNCIÓN ANIDADA 'prod1'

  # declaración de caso base, fin de ejecución
  def prod1(_, [], acc), do: acc

  # declaración de función recursiva
  def prod1(elem, [h|t], acc) do
    IO.puts("#{elem}, #{h}")
    prod1(elem, t, [{elem, h} | acc])
  end

# FOR
  def pr(a, b) do
    for e1 <- a, e2 <- b do
      {e1, e2}
    end
  end

end
