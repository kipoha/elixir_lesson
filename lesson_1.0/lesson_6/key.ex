defmodule KeyModule do
  @default_opts [a: 1, b: 2]

  def run(_arg, opts \\ []) do
    opts = Keyword.merge(@default_opts, opts) # => is merging options(if keyword is exists in opts it will replace it)
    opts |> IO.inspect
  end
end

KeyModule.run(1, [a: 2])
