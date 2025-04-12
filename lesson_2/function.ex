defmodule Temp do

  # module
  defmodule Nested do
    def main do
      "hello" |> IO.inspect
      result("world") |> IO.inspect
      calculate(10, 30) |> IO.inspect
      test()
    end

    def result(data) do
      data
    end

    def calculate(a, b), do: a + b

    # private function
    defp test do
      "test private" |> IO.inspect
    end
    
  end
end

Temp.Nested.main

1234 |> Temp.Nested.calculate(423) |> IO.inspect

# Temp.Nested.test   # => not work
