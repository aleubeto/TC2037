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
    # se combinan los estados de a1 'np' con los de a2 'nq'
    Enum.reduce(a1, [], fn np, acc -> acc ++ Enum.reduce(a2, [], fn nq, acc -> acc ++ [{np,nq}] end) end)
  end
  # caso de uso: AutomatasFinitosDeterministas.cross(Automatas.a1[:states],Automatas.a2[:states])

  #2 función que retorna...
  def delta(a1, a2) do
    p = cross(a1[:states], a2[:states])
    Enum.map(p, fn {r1,r2} -> IO.inspect({Map.get(a1.delta, {r1, ?b}), Map.get(a2.delta, {r2,?b})}) end)
  end
  # caso de uso: AutomatasFinitosDeterministas.delta(Automatas.a1, Automatas.a2)

  #3 función que retorna...
  def final(a1, a2) do
    cross(a1.f, a2.states) ++ cross(a2.f, a1.states)
  end
  # caso de uso: AutomatasFinitosDeterministas.final(Automatas.a1, Automatas.a2)

  #4 función que retorna...
  def union(a1, a2) do
  end

  #5 función que retorna...
  def prune() do
  end

end