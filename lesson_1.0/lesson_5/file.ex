defmodule FileModule do
  def run(path) do
    case File.open(path, [:read, :utf8]) do
      {:ok, iodevice} ->
        iodevice |>
        read() |>
        File.close()

      {:error, reason} ->
        reason |> IO.inspect(label: "Error")
    end
  end

  defp read(iodevice) do
    case IO.read(iodevice, :line) do
      :eof ->
        :ok

      line ->
        sleep(500)
        line |>
        String.split("") |>
        Enum.each(&read_by_char/1)

        read(iodevice)
    end
  end

  def read_by_char(char) do
      char |> IO.write()
      sleep(100)
  end

  defp sleep(n) when is_number(n), do: :timer.sleep(n)
end

# FileModule.run("tes.txt")
FileModule.run("test.txt")
