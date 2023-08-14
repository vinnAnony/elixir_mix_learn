defmodule ElixirMixLearn.Lists do
  def simple_sum([]), do: 0
  def simple_sum([h | t]), do: h + simple_sum(t)
end
