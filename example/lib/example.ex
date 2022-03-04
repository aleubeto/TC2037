defmodule Example do

  #función para calcular factorial de un número
  def factorial(0), do: 1
  def factorial(n) when n > 0, do: n * factorial(n - 1)

  #función para invertir una lista
  def reverse([], acc), do: acc
  def reverse([cabeza|cola], acc), do: reverse(cola, [cabeza|acc])

  #función para obtener la suma de 2 números
  def suma([],acc), do: acc
  def suma([cabeza|cola],acc) do
    prod(cola, acc + cabeza)
  end

  #función para obtener el producto de 2 números
  def prod([],acc), do: acc
  def prod([cabeza|cola],acc) do
    prod(cola, acc * cabeza)
  end

end