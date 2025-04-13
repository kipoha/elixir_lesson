defmodule Recursion do
  def sum do
    # get user input
    IO.gets("Enter a number: ")
    # convert to integer
    |> Integer.parse
    # check input if not integer, return "sum" function
    |> check_input
  end

  # if error return sum
  def check_input(:error), do: sum()

  # if integer, return number
  def check_input({number, _}), do: number
end

# call the function and multiply by 2
Recursion.sum |> then(fn x -> x * 2 end) |> IO.inspect
