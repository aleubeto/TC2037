defmodule DnaAnalysis do

    def count(seq, char) do
        #count(seq, char, 0)
        Enum.filter(seq, fn e -> e == char end) |> length()
    end

    #defp count([], _char, acc), do: acc

    #defp count([char|b], char, acc), do: count(b, char, acc + 1)

    #defp count([_a|b], char, acc), do: count(b, char, acc)

end
