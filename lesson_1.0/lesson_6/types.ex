defmodule UserType do
  defstruct name: "",
            age: 0,
            is_married: false

  def new(name, age, is_married) do
    %UserType{name: name, age: age, is_married: is_married}
  end

  def show(%UserType{name: name, age: age, is_married: is_married}) do
    "#{name} is #{age} years old and #{if is_married, do: "married", else: "not married"}"
  end

  def update(user = %UserType{}, new_name, new_age, is_married) do
    %UserType{user | name: new_name, age: new_age, is_married: is_married}
  end
end


defmodule CarTypes do
  defstruct make: "",
            model: "",
            year: 0,
            owner: %UserType{}


  def new(make, model, year, owner = %UserType{}) do
    %CarTypes{make: make, model: model, year: year, owner: owner}
  end

  def show(%CarTypes{make: make, model: model, year: year, owner: owner}) do
    "#{make} #{model} #{year} owned by #{(owner.name)}"
  end

  def update(car = %CarTypes{}, new_make, new_model, new_year, new_owner = %UserType{}) do
    %CarTypes{car | make: new_make, model: new_model, year: new_year, owner: new_owner}
  end
end



defmodule TypesModule do
  def run do
    user = UserType.new("Kipoha", 19, true)
    user |> UserType.show |> IO.inspect
    updated_user = UserType.update(user, "Kipoha", 20, false)
    updated_user |> UserType.show |> IO.inspect


    car = CarTypes.new("Honda", "Civic", 2019, user)
    car |> CarTypes.show |> IO.inspect
    updated_car = CarTypes.update(car, "Honda", "Civic", 2020, updated_user)
    updated_car |> CarTypes.show |> IO.inspect

    update_in(car.owner.age, &(&1 + 10)) |> IO.inspect
    put_in(car.owner.name, "Kiki") |> IO.inspect
  end
end

TypesModule.run
