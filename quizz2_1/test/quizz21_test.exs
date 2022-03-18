defmodule Quizz21Test do
  use ExUnit.Case
  doctest Quizz21

#Pregunta 1:

  #@tag :skip
  test "occurs: counts the number of occurrences of an element in a list" do
    assert Quizz21.occurs([2,3,5,7,11,13,7,5], 11) == 1
    assert Quizz21.occurs([2,3,5,7,11,13,7,5], 7) == 2
    assert Quizz21.occurs([2,3,5,7,11,13,7,5], 5) == 2
    assert Quizz21.occurs([2,3,5,7,11,13,7,5], 99) == 0
  end

#Pregunta 2:

  #tag :skip
  test "remove_at" do
    assert Quizz21.remove_at([1,2,3], 0) ==  [2,3]
    assert Quizz21.remove_at([4,5,6,7], 2) ==  [4,5,7]
    assert Quizz21.remove_at([4,5,6,7], 10) ==  [4,5,6,7]
    assert Quizz21.remove_at([4,5,6,7], -1) ==  [4,5,6,7]
  end

#Pregunta 3:

  #tag: skip
  test "encode_dup: should work with list of numbers" do
    assert Quizz21.encode_dup([2,2,2,1,2,2,5,5,5,5,7,7]) == [{3,2},{1,1},{2,2},{4,5},{2,7}]
  end

  #@tag :skip
  test "encode_dup: should work with list of strings" do
    assert Quizz21.encode_dup(~w[a a a a b c c a a d e e e e]) == [{4,"a"},{1,"b"},{2,"c"},{2,"a"},{1,"d"},{4,"e"}]
  end

  #@tag :skip
  test "encode_dup: should work with characters on a string" do
    assert Quizz21.encode_dup("aaaabccaadeeee") == [{4,?a},{1,?b},{2,?c},{2,?a},{1,?d},{4,?e}]
  end

end
