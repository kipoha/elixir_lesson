defmodule ExceptionModule do
  def run do
    try do
      # 1 / 0
      raise "Error"
    rescue
      e in ArithmeticError -> "Caught: #{Exception.message(e)}" |> IO.puts
      e -> "Caught: #{Exception.message(e)}" |> IO.puts
    end
  end
end

ExceptionModule.run
