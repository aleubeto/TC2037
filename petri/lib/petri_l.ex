defmodule Petri_l do
  def preset(f, n) do
    f |>
    Enum.filter(fn[_src, tgt] -> tgt == n end) |>
    Enum.map(fn [src, _] -> src end)
  end

  def postset(f,n) do
    f |>
    Enum.filter(fn[src, _tgt] -> src == n end) |>
    Enum.map(fn [_src, tgt] -> tgt end)
  end
end
