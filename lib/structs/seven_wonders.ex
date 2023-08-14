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
end
