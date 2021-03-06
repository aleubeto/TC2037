defmodule BowlingTest do
  use ExUnit.Case

  test "butter game" do
    game = List.duplicate([0,0],9) ++ [[0,0, nil]]
    assert Bowling.score(game) == 0
  end

  test "'all ones' game" do
    game = List.duplicate([1, 1], 9) ++ [[1, 1, nil]]
    assert Bowling.score(game) == 20
  end

  test "one spare" do
    game = [[5,5],[3,0]] ++ List.duplicate([0, 0], 7) ++ [[0, 0, nil]]
    assert Bowling.score(game) == 16
  end

  test "one strike" do
    game = [[10,nil],[3,4]] ++ List.duplicate([0, 0], 7) ++ [[0, 0, nil]]
    assert Bowling.score(game) == 24
  end
  
end
