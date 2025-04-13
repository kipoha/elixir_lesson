defmodule Guard do

  # check type
  def calc(a, b) when is_number(a) and is_number(b), do: a + b

  # else
  def calc(_, _), do: :error

  # check value
  def test do
    if !is_number(10) do
      "not number" |> IO.inspect
    end
  end
end
