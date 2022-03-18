defmodule Quizz21Test do
  use ExUnit.Case
  doctest Quizz21

  #@tag :skip
  test "occurs: counts the number of occurrences of an element in a list" do
    assert Quizz21.occurs([2,3,5,7,11,13,7,5], 11) == 1
    assert Quizz21.occurs([2,3,5,7,11,13,7,5], 7) == 2
    assert Quizz21.occurs([2,3,5,7,11,13,7,5], 5) == 2
    assert Quizz21.occurs([2,3,5,7,11,13,7,5], 99) == 0
  end

end
