defmodule Attribute do
  @car "car" # attribute
  @year 2020 # attribute

  # function
  def main do
    @car |> IO.inspect
    @year |> IO.inspect
  end

  # get attribute
  def car, do: @car

  def year, do: @year

  # but cant set attribute, because @car is read only(constant)
  # def car(new_car) when is_binary(new_car), do: @car = new_car
  
end

Attribute.car |> IO.inspect

# Attribute.car("new car") |> IO.inspect => not work!!!
