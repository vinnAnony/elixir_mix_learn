defmodule ElixirMixLearn.Lists do
  @moduledoc """
  Function Summary:

  1. sum of numbers in a list
  """

  @doc """
  Returns sum of numbers in a list
  """
  @spec sum(list(number())) :: number()
  def sum(nums), do: sum_tail_rec(nums)

  @spec simple_sum(list(number())) :: number()
  def simple_sum([]), do: 0
  def simple_sum([h | t]), do: h + simple_sum(t)

  @spec sum_tail_rec(list(number()), integer()) :: number()
  def sum_tail_rec(nums, acc \\ 0)
  def sum_tail_rec([], acc), do: acc

  def sum_tail_rec([h | t], acc) do
    sum_tail_rec(t, acc + h)
  end
end
