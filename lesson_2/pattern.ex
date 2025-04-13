a = 10
b = 20
a + b |> IO.inspect

data = {1, 2}

{a_, b_} = data

a_ + b_ |> IO.inspect

data = {"John", 23, "analyst"}

{name, age, job} = data

name |> IO.inspect

# {^name, age, job} = {"Timmy", 17, "devops"} # name == name, operator ^(pin) is used to match the value
# if name != name, it will throw an error 

# {name, _, job} = {"Timmy", 17, "devops"} # _ is used to ignore the value


map_var = %{
  car: "Honda",
  model: "Civic",
  year: 2020
}

%{car: car, model: model, year: year} = map_var

car |> IO.inspect # => Honda
