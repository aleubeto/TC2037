defmodule Petri_m do

  def preset(f, n) do
    Enum.filter(f, fn {_k, conj} -> n in conj end)
    |> Enum.map(fn {k,_} -> k end)
    |> MapSet.new
  end

  def postset(f, n) do
    Map.get(f, n)
  end

  def is_enabled(f, m, t) do
    preset(f, t)
    |> MapSet.subset?(m)
  end

  def fire(f, m, t) do
    if is_enabled(f, m, t) do
      MapSet.difference(m, preset(f, t))
      |> MapSet.union(f, t)
    else
      m
    end
  end

end
