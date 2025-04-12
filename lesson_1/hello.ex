defmodule Run do
  def main(text) do
    text
    |> IO.inspect   # => output "Hello World"
    |> String.replace("Hello", "Goodbye")
    |> IO.inspect   # => output "Goodbye World"
    |> String.reverse()
    |> IO.inspect   # => output "dlroW eybdooG"
    |> String.upcase()
    |> IO.inspect   # => output "DLROW EYBDOOG"
  end

  def main2(text, text2) do
    text <> " " <> text2
    |> IO.inspect   # => output "Hello World Kipoha"
  end
end

"Hello World" |> Run.main()
# "Hello World" |> Run.main() == Run.main("Hello World")


# if function has more than one argument
"Hello World" |> Run.main2("Kipoha")
