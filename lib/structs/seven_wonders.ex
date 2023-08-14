defmodule ElixirMixLearn.Structs.SevenWonders do
  alias ElixirMixLearn.Structs.SevenWonders
  defstruct name: "", country: ""

  @type t :: %SevenWonders{
          name: String.t(),
          country: String.t()
        }

  @spec all :: [t()]
  def all do
    [
      %SevenWonders{name: "Mt. Kenya", country: "Kenya"},
      %SevenWonders{name: "Petra", country: "Jordan"},
      %SevenWonders{name: "Colosseum", country: "Italy"},
      %SevenWonders{name: "Taj Mahal", country: "India"}
    ]
  end

  @spec print_names([t()]) :: :ok
  def print_names(wonders) do
    wonders |> Enum.each(fn %{name: name} -> IO.puts(name) end)
  end

  @spec filter_by_country([t()], String) :: [t()]
  def filter_by_country(wonders, country) do
    wonders |> Enum.filter(fn %{country: country_name} -> country_name == country end)
  end

  @spec sort_by_country_length([t()]) :: [t()]
  def sort_by_country_length(wonders) do
    wonders |> Enum.sort(fn x, y -> String.length(x.country) < String.length(y.country) end)
  end

  @spec name_country_list([t()]) :: [t()]
  def name_country_list(wonders) do
    wonders
    |> Enum.reduce([], fn wonder, acc -> [[wonder.name, wonder.country] | acc] end)
  end

  @spec country_name_keyword([t()]) :: [Atom]
  def country_name_keyword(wonders) do
    wonders
    |> Enum.reduce([], fn wonder, acc -> [{String.to_atom(wonder.name), wonder.country} | acc] end)
  end

  @spec all_names([t()]) :: [String]
  def all_names(wonders) do
    for %{name: name} <- wonders, do: name
  end
end
