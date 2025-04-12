defmodule Attribute do
  @car "car"
  @year 2020

  # function
  def main do
    @car |> IO.inspect
    @year |> IO.inspect
  end

  # get attribute
  def car, do: @car
  
end

Attribute.car |> IO.inspect
