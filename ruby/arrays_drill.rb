def build_array(parameter1, parameter2, parameter3)
  new_array = [parameter1, parameter2, parameter3]
  return new_array
end

build_array(1, false, "three")


def add_to_array(array, item)
  return array << item
end

add_to_array([1, "two"], 3)




our_array = []
p our_array
our_array << "one"
our_array = our_array + [2, "three", 4, false]
p our_array
our_array.delete_at(2)
p our_array
our_array.insert(2, "new item")
p our_array
our_array.shift
p our_array

if our_array.include?(4)
  puts "our_array includes 4"
else
  puts "our_array doesn't include 4"
end

new_array = ["a", "b", "c"]
p new_array

combined_array = our_array + new_array
p combined_array