# integer
int_var = 10
int_var2 = 1_000_000

hex_var = 0x10
bin_var = 0b10


# string
string_var = "Kipoha"  # binary string
# string_var2 = 'test'   # character list


# float
float_var = 10.0
float_var2 = 234.123


# boolean
boolean_var = true    # true == :true
boolean_var2 = false  # false == :false


# atom
# atom is constant, can't be changed
atom_var = :kipoha
atom_var2 = :test
atom_var3 = :valid?


# tuple
tuple_var = {1, 2, 3}
tuple_var2 = {123, :fish, "crocodile", true}
{:ok, :data}
{:error, nil}


# map(dictionary, key => value)
map_var = %{
  name: "Kipoha",
  age: 19,
}
map_var2 = %{
  "name" => "Kipoha",
  "age" => 19,
}
map_var3 = %{
  :name => "Kipoha",
  :age => 19,
}


# list
list_var = [1, 2, 3]
list_var2 = [ test: 1, test2: 2 ] # map(key => value), key is atom


# range
range_var = 1..10


# nil
nil_var = nil     # nil is empty(nil == :nil)










### examples ###

# integer
int_var + int_var2
|> IO.inspect     # => output 1000010


# string
string_var <> " Kipoha"
|> IO.inspect     # => output "Kipoha Kipoha"

"Test #{2+13}"
|> IO.inspect     # => output "Test 15"


# float
float_var + float_var2
|> IO.inspect     # => output 234.123


# boolean
boolean_var and boolean_var2
|> IO.inspect     # => output false

if boolean_var or boolean_var2 do
  "is true"
else
  "is false"
end
|> IO.inspect     # => output "is true"


# atom
true == :true
|> IO.inspect     # => output true


# tuple
tuple_var2
|> IO.inspect     # => output {123, :fish, "crocodile", true}

tuple_var2 |> elem(2)
|> IO.inspect     # => output "crocodile"

tuple_var2 |> put_elem(2, "Kipoha")
|> IO.inspect     # => output {123, :fish, "Kipoha", true}


# map
map_var.name
|> IO.inspect     # => output "Kipoha"

map_var[:name]
|> IO.inspect     # => output "Kipoha"

# map_var[:unknown] => nil
# map_var.unknown   => KeyError


# list
list_var[0]
|> IO.inspect     # => output 1

list_var ++ [4, 5, 6]
|> IO.inspect     # => output [1, 2, 3, 4, 5, 6]

list_var2.get(:test)
|> IO.inspect     # => output 1


# range
range_var
|> IO.inspect     # => output 1..10

range_var
|> Enum.to_list
|> IO.inspect     # => output [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
