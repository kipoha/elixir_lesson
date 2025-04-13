defmodule Arity do
  def calc(a, b, c \\ 0), do: a + b

  # one name => more function
  def divide(a), do: a / 1

  def divide(a, 0), do: 0

  def divide(a, b), do: a / b
end


Arity.calc(10, 5) |> IO.inspect

Arity.calc(10, 20, 30) |> IO.inspect

# first
Arity.divide(10) |> IO.inspect

# second
Arity.divide(10, 0) |> IO.inspect

# third
Arity.divide(10, 2) |> IO.inspect
