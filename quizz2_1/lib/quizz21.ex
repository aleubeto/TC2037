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

# Pregunta 2

  # F.P: Si se recibe una lista con elementos, se ejecuta el llenado de la nueva lista "[]"
  def remove_at(lista, i), do: remove_at(lista, i, [], 0)

  # Llenado de lista sin el elemento "i"
  def remove_at([hd|tl], i, nueva, acc) do
    if (i == acc), do: remove_at([], i, nueva ++ tl, acc), else: remove_at(tl, i, nueva ++ [hd], acc + 1) 
  end

  # Caso base: Si se recibe una lista vacía, retorna la misma lista vacía
  def remove_at([], _i, nueva, _acc), do: nueva

# Pregunta 3

end