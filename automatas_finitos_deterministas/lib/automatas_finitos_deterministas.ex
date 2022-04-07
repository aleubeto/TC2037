defmodule AutomatasFinitosDeterministas do

  def cross(a1, a2) do
    a1_states = a1[:states]
    a2_states = a2[:states]
    Enum.reduce(a1_states, [], fn np, acc -> acc ++ Enum.reduce(a2_states, [], fn nq, acc -> acc ++ [{np,nq}] end) end)
  end
  
end