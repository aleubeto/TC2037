defmodule BowlingTest do
  use ExUnit.Case

  test "butter game" do
    game = List.duplicate([0,0],9) ++ [[0,0, nil]]
    assert Bowling.score(game) == 0
  end
  
end
