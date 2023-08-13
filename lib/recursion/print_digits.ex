defmodule ElixirMixLearn.Recursion.PrintDigits do
  # Base case
  def upto(0), do: 0

  def upto(nums) do
    IO.puts(nums)
    upto(nums - 1)
  end
end
