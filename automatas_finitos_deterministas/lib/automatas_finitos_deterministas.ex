defmodule AutomatasFinitosDeterministas do

  # función auxiliar para determinar si una transición es válida en el nuevo automata
  def valid(s1, s2, t, a1, a2) do
    if (Map.has_key?(a2[:delta], {s1, t}) and Map.has_key?(a2[:delta], {s2, t})) do
      true
    else
      false
    end
  end

  #1 función que retorna el producto cruz de los estados de 2 automatas
  def cross(a1, a2) do
    a1_states = a1[:states]
    a2_states = a2[:states]
    # se combinan los estados de a1 'np' con los de a2 'nq'
    Enum.reduce(a1_states, [], fn np, acc -> acc ++ Enum.reduce(a2_states, [], fn nq, acc -> acc ++ [{np,nq}] end) end)
  end

  #2 función que retorna...
  def delta(a1, a2) do
    p = cross(a1, a2)
    Enum.map(p, fn {r1,r2} -> IO.inspect({Map.get(a1.delta, {r1, ?a}), Map.get(a2.delta, {r2,?a})}) end)
  end

  #3 función que retorna...
  def final(a1, a2) do
  end

  #4 función que retorna...
  def union(a1, a2) do
  end

  #5 función que retorna...
  def prune() do
  end

end