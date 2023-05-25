defmodule HttpStageTest do
  use ExUnit.Case
  doctest HttpStage

  test "greets the world" do
    assert HttpStage.hello() == :world
  end
end
