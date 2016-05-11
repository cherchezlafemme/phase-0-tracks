#Release 0: Explore Blocks
def send_love_to_teacher
  puts "this is before running a block"
  first_name = "Glenna"
  last_name = "Mowry"
  yield(first_name, last_name)
  puts "after the block"
end

send_love_to_teacher { |first_name, last_name| puts "#{first_name} #{last_name}, hi how are you?" }

#Release 1: Use each, map, and map!
dbc_places = ["chicago", "seattle", "dc", "san diego"]
dog_breeds_perk = {"Huskie" => "beautiful yodels", "Irish Wolfhound" => "size", "German Shepherd" => "loyalty"}

dbc_places.each do |place|
  puts "There is a DBC campus in #{place}"
end

dbc_places.map do |place|
  puts "There is a DBC campus in #{place.upcase}"
end

dbc_places.each do |place|
  puts "(after map) place is #{place}"
end

dbc_places.map! do |place|
  puts "There is a DBC campus in #{place.upcase}"
  place.upcase
end

dbc_places.each do |place|
  puts "(after map!) place is #{place}"
end

dog_breeds_perk.each do |breed, perk|
  puts "the breed called #{breed} is known for it's #{perk}"
end

#Release 2: Use the Documentation

#A method that iterates through the items, deleting any that meet a certain condition 
#(for example, deleting any numbers that are less than 5).
numbers = [1,2,3,4,5,6,7,8,9,10]
days_of_the_week = {"Monday" => 1, "Tuesday" => 2, "Wednesday" => 3, "Thursday" => 4, "Friday" => 5, "Saturday" => 6, "Sunday" => 7}

numbers.delete_if { |number| number < 5 }
p numbers

days_of_the_week.delete_if { |day, day_number| day_number < 5 }
p days_of_the_week

#A method that filters a data structure for only items that do satisfy a certain condition 
#(for example, keeping any numbers that are less than 5).
numbers = [1,2,3,4,5,6,7,8,9,10]
days_of_the_week = {"Monday" => 1, "Tuesday" => 2, "Wednesday" => 3, "Thursday" => 4, "Friday" => 5, "Saturday" => 6, "Sunday" => 7}

numbers.keep_if { |number| number < 5 }
p numbers

days_of_the_week.keep_if { |day, day_number| day_number < 5 }
p days_of_the_week

#A different method that filters a data structure for only items satisfying a certain condition
numbers = [1,2,3,4,5,6,7,8,9,10]
days_of_the_week = {"Monday" => 1, "Tuesday" => 2, "Wednesday" => 3, "Thursday" => 4, "Friday" => 5, "Saturday" => 6, "Sunday" => 7}

numbers.select! { |number| number < 5 }
p numbers

days_of_the_week.select! { |day, day_number| day_number < 5 }
p days_of_the_week

#A method that will remove items from a data structure 
#until the condition in the block evaluates to false, then stops.
numbers = [1,2,3,4,5,6,7,8,9,10]
days_of_the_week = {"Monday" => 1, "Tuesday" => 2, "Wednesday" => 3, "Thursday" => 4, "Friday" => 5, "Saturday" => 6, "Sunday" => 7}

new_numbers = numbers.drop_while { |number| number < 7}
p new_numbers

days_of_the_week.reject! { |day, day_number| day_number < 5 }
p days_of_the_week
