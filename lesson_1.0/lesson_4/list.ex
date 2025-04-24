defmodule ListModule do
  # if list is empty or end of list
  def iterate([]), do: nil

  # if list is not empty
  def iterate([ head | tail ]) do
    head |> IO.puts
    tail |> iterate
  end

  # def len([]), do: 0

  # def len([ _ | tail ]) do
  #   1 + len(tail)
  # end

  def len(list), do: do_len(0, list)

  defp do_len(count, []), do: count

  defp do_len(count, [ _ | tail ]) do
    do_len(count + 1, tail)
  end
  
end
list_data = [1, 2, 3, 4, 5]

list_data |> ListModule.iterate   # output => 1 2 3 4 5

total_length = (list_data ++ [6, 7, 9]) |> ListModule.len

IO.puts("Total length: #{total_length}") # output => Total length: 8
Enum.max(list_data) |> IO.inspect

range = 1..5
Enum.map(range, fn x -> x * 2 end) |> IO.inspect  # output => [2, 4, 6, 8, 10]
Enum.filter(range, &(&1 > 2)) |> IO.inspect # output => [1, 2, 3, 4]
Enum.to_list(range) |> IO.inspect # output => [1, 2, 3, 4, 5]

Enum.reduce(range, fn x, acc -> x + acc end) |> IO.inspect  # output => 15
Enum.sum(range) |> IO.inspect  # output => 15


Enum.map([1, 2, 3], fn x -> x * 2 end)      # output => [2, 4, 6]
Enum.filter(1..10, fn x -> rem(x, 2) == 0 end)  # output => [2, 4, 6, 8, 10]
Enum.reduce([1, 2, 3], 0, fn x, acc -> acc + x end)  # output => 6
Enum.sort(["b", "a", "c"])   # output => ["a", "b", "c"]
Enum.uniq([1, 2, 2, 3])      # output => [1, 2, 3]
Enum.join(["one", "two"], ", ")  # output => "one, two"

