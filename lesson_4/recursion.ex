defmodule Recursion do
  def sum do
    IO.gets("Enter a number: ")
    |> Integer.parse
    |> check_input
  end

  def check_input(:error), do: sum()

  def check_input({number, _}), do: number
end

Recursion.sum |> then(fn x -> x * 2 end) |> IO.inspect
