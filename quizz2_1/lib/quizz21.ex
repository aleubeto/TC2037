defmodule Quizz21 do

# Pregunta 1: occurs

  # Si se recibe una lista llena, se ejecuta el recorrido con contador
  def occurs(list, char), do: occurs(list, char, 0)
  
  # Recorrido con contador
  def occurs([hd|tl], char, acc) do
    if (hd == char), do: occurs(tl, char, acc + 1), else: occurs(tl, char, acc)
  end
  
  # Caso base: Si se recibe una lista vacía, retorna 0
  def occurs([], _char, acc), do: acc

# Pregunta 2

# Pregunta 3

end