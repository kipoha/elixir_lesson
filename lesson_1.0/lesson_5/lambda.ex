defmodule LambdaModule do
  def run(list, func), do: run_map([], list, func) |> Enum.reverse

  defp run_map(list, [], _), do: list

  defp run_map(list, [ h | t ], func) do
    [ func.(h) | list ] |> run_map(t, func)
  end
end




# first test
square_func = fn(x)
  when is_number(x) -> x * x
  _ -> :error
end

square_func.(2) |> IO.puts
square_func.(3) |> IO.puts
square_func.(4) |> IO.puts
square_func.("sdads") |> IO.puts


1..20 |> Enum.to_list |> LambdaModule.run(square_func) |> IO.inspect





# capturing
# first func == second, but first have local variable, second - not
func = fn(x) -> x * 2 end
func = &(&1 * 2)
func2 = &(&1 * &1 + &2)
test = &(&1 <> &2)

func.(2) |> IO.puts
func2.(2, 3) |> IO.puts
test.("a", "b")

hello_func = &(IO.puts/1)
"CROCO" |> hello_func.()







# multiple lambda
lang = fn
  "django" -> "python"
  "fastapi" -> "python"
  "flask" -> "python"
  "spring" -> "java"
  "phoenix" -> "elixir"
  "ASP.NET" -> "C#"
  _ -> nil
end


lang.("django") |> IO.puts
lang.("spring") |> IO.puts
lang.("ASP.NET") |> IO.puts
lang.("idk") |> IO.puts
