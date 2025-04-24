defmodule MacrosModule do
  def run(x) do
    IO.puts(if x > 0, do: :positive, else: :negative) # this is a macro 

    if x > 0 do # this is an expression
      :positive |> IO.puts # => data
    else
      :negative |> IO.puts # => false / nil
    end

    IO.puts(unless x > 0, do: :negative, else: :positive) # this is a macro

    data = cond do
      x > 1000 and x < 2000 -> :between_1000_and_2000
      x > 0 -> :positive
      x < 0 -> :negative
      true -> :other
    end

    data |> IO.puts()


    case File.open("test.txt", [:read]) do # => open File
      {:ok, file} ->
        IO.read(file, :eof) |> IO.puts
        File.close(file)

      {:error, reason} -> IO.puts(reason)
      _ -> IO.puts("unknown error")
    end
  end
end

MacrosModule.run(1)
MacrosModule.run(-1)
MacrosModule.run(1001)
