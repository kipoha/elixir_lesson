# main module
defmodule Function do

  # module
  defmodule FirstModule do
    # import module
    alias Function.RandomModule, as: Rand

    def main do
      "hello" |> IO.inspect
      result("world") |> IO.inspect
      calculate(10, 30) |> IO.inspect
      test()

      # use other module
      Rand.num() |> IO.inspect
    end

    def result(data) do
      data # elixir not have "return" key, but return value in last line
    end

    def calculate(a, b), do: a + b

    # private function
    defp test do
      "test private" |> IO.inspect
    end  
  end

  # module
  defmodule RandomModule do
    def num do
      :rand.uniform(10000) # => 1 ~ 10000
    end
  end
end

Function.FirstModule.main

# if function have one more argument, write second argument and more in ()
1234 |> Function.FirstModule.calculate(423) |> IO.inspect

# Function.FirstModule.test   # => not work
Function.RandomModule.num |> IO.inspect
