defmodule Quizz21 do

# Pregunta 1: occurs

  # F.P: Si se recibe una lista llena, se ejecuta el recorrido con contador
  def occurs(list, char), do: occurs(list, char, 0)
  
  # Recorrido con contador
  def occurs([hd|tl], char, acc) do
    if (hd == char), do: occurs(tl, char, acc + 1), else: occurs(tl, char, acc)
  end
  
  # Caso base: Si se recibe una lista vacía, retorna 0
  def occurs([], _char, acc), do: acc

# Pregunta 2: remove_at

  # F.P: Si se recibe una lista con elementos, se ejecuta el llenado de la nueva lista "[]"
  def remove_at(lista, i), do: remove_at(lista, i, [], 0)

  # Llenado de lista sin el elemento "i"
  def remove_at([hd|tl], i, nueva, acc) do
    if (i == acc), do: remove_at([], i, nueva ++ tl, acc), else: remove_at(tl, i, nueva ++ [hd], acc + 1) 
  end

  # Caso base: Si se recibe una lista vacía, retorna la misma lista vacía
  def remove_at([], _i, nueva, _acc), do: nueva

# Pregunta 3: encode_dup

  # F.P: Si se recibe una lista con elementos, se empieza a llenar una "nueva" lista de tuplas
  def encode_dup(lista), do: encode_dup(to_charlist(lista), 0, [], hd(to_charlist(lista)))

  #
  def encode_dup([hd|tl], acc, nueva, anterior) do
    if (anterior == hd), do: encode_dup(tl, acc + 1, nueva, hd), else: encode_dup(tl, 1, nueva ++ [{acc, anterior}], hd) 
  end

  # Caso base: Si se recibe una lista vacía, se retorna una lista de tuplas vacía
  def encode_dup([], acc, nueva, anterior), do: nueva ++ [{acc, anterior}]

end