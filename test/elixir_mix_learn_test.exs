defmodule ElixirMixLearnTest do
  use ExUnit.Case
  doctest ElixirMixLearn

  test "greets the world" do
    assert ElixirMixLearn.hello() == :world
  end
end
