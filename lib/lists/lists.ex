defmodule ElixirMixLearn.Lists do
  def sum(nums), do: sum_tail_rec(nums)

  def simple_sum([]), do: 0
  def simple_sum([h | t]), do: h + simple_sum(t)

  def sum_tail_rec(nums, acc \\ 0)
  def sum_tail_rec([], acc), do: acc

  def sum_tail_rec([h | t], acc) do
    sum_tail_rec(t, acc + h)
  end
end
