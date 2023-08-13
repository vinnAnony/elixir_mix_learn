defmodule ElixirMixLearn.Recursion.SumDigits do
  def upto(0), do: 0

  def upto(num) do
    upto_tail_rec(num)
  end

  # Public function - for documentation of code
  def upto_tail_rec(num, acc \\ 0)
  # Base case
  def upto_tail_rec(0, acc), do: acc

  def upto_tail_rec(num, acc) do
    upto_tail_rec(num - 1, acc + num)
  end
end
