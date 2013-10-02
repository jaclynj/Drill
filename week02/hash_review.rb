require 'pry'

# Create a hash that has the following properties from the start using the hash_rocket notation
# and store it into a variable.

# |Key |Value|
# |:----------|:-----------|
# |"the meaning of life"|42|
# |:jonathan|"awesome"|
# |9001|:goku|

hash = {
  "the meaning of life" => 42,
  :jonathan => "awesome",
  9001 => :goku
}

p hash
# |"bill gates"|9999999999|
# |:paris|"pink"|
# |2000|"The year the world was supposed to end"|

hash["bill gates"] = 999999999
hash[:paris] = "pink"
hash[2000] = "The year the world was supposed to end"

p hash

new_values = hash.keys
new_keys = hash.values


# Create a new array and store it into a new variable
# - Using a while loop and a counter, iterate over both the newly create
# `new_values` array and `new_keys` array taking the i-th from the `new_keys` array and
# making that a new key in the newly created hash that maps to a value that is the i-th element
# from the `new_values` array.

new_array = []
new_hash = Hash.new

count = 0
while count < new_values.length
  value = new_values[count] #sets each value to the key new_values[count] meaning the first one
                              # in new_values will become the key to this value
  key = new_keys[count] #sets each key to the value new_keys[count] meaning the first one
                          # in new_keys will become the value to this key
  new_hash[key] = value #adds this new key(stored in key variable), as the key and sets whatever is
                          #stored in the value variable to that key. stores this in new hash.
  count += 1
end


#easier way to do it
newer_hash = {}
hash.each do |key, value|
  newer_hash[value] = key
end

binding.pry