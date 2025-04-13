defmodule HelloWorld do
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

"Hello World" |> HelloWorld.main()
# "Hello World" |> HelloWorld.main() == HelloWorld.main("Hello World")


# if function has more than one argument
"Hello World" |> HelloWorld.main2("Kipoha")
