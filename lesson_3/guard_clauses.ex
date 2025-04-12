defmodule Guard do
  def calc(a, b) when is_number(a) and is_number(b), do: a + b

  def calc(_, _), do: :error

  def test do
    if !is_number(10) do
      "not number" |> IO.inspect
    end
  end
end
