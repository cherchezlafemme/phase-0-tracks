# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Create an empty hash that will be our list
  # Set default quantity
  # Add the items in the hash:
    # Taking the string and split it into the items where each item will be a word. #Array
    # Convert an array into the hash:
      # Use the item names as a key
      # Updated the values with default value
      # Check the type of data structure to make sure we have a hash
  # print the list to the console
# output: hash

# Method to add an item to a list
# input: item name and optional quantity
# steps:
  # Create a loop that exit this method when user types 'done'
   # Ask user what kind of item they want to add => key
   # Ask a user what will be the quantity of this item => value
   # Update a hash with new key-value pair which is  item-quantity pair
# output: updated list of items, a hash

# Method to remove an item from the list
# input: item name they want to get rid of
# steps:
  #Create a loop that offers user to exit when user types 'done'
    # Print out the a list of the items they have in the shopping list (array of values)
    # Ask which item user wants to remove (user will give a string)
    # Remove the item-quantity pair from the hash with the item name that matches the item user wants to remove
# output: updated list of items, a hash

# Method to update the quantity of an item
# input: item name and quantity
# steps:
 # Create a loop that offers user to exit when user types 'done'
 # Ask which item the user wants to update the quantity of
 # Ask the user what new quantity they'd like
 # Update the item quantity within the hash
# output: updated list of items with quantities

# Method to print a list and make it look pretty
# input: Already existing list via the hash
# steps:
 # Print "Shopping List" title
  # Print items and quantities line by line
# output: Complete and updated shopping list


#BUSINESS LOGIC

def create_list(list_given_by_user)
  shopping_list = {}
  quantity = 1
  list_of_items = list_given_by_user.split(" ")
  list_of_items.each do |item|
    shopping_list[item] = "qty:#{quantity}"
  end
  shopping_list
end

def add_item(shopping_list)
  loop do
    puts "What item would you like to add to the list? If you don't want to add any, just type in done."
    add_item = gets.chomp
    break if add_item == "done"
    puts "How many?"
    user_quantity = gets.chomp
    shopping_list[add_item] = "qty: #{user_quantity}"
  end
  shopping_list
end

def remove_item(shopping_list)
  loop do 
 puts "Here are the items in your list: #{shopping_list.keys}"
 puts "Which items would you like to remove? If you don't want to remove any, just type in done."
 item_remove = gets.chomp
 break if item_remove == "done"
 shopping_list.delete(item_remove)
 end
 shopping_list
end

def update_item_quantity(shopping_list)
 loop do
 puts "Which item would you like to update the quantity of? If you don't want to update any, just type in done."
 item_update = gets.chomp
 break if item_update == "done"
 puts "How many of this item would you like?"
 quantity_update = gets.chomp
   if shopping_list.has_key?(item_update)
   shopping_list[item_update] = "qty:#{quantity_update}"
   else 
   puts "Sorry! Looks like this item is not on your list!"
   end
 end
 shopping_list
end

def print_list (shopping_list)
  puts "Shopping list:".upcase
  shopping_list.each {|item, quantity| puts "#{item.capitalize}, #{quantity}"}
end

#User Interface:
puts "Please, enter your shopping list!"
list_given_by_user = gets.chomp
shopping_list = create_list(list_given_by_user)
print_list (shopping_list)
puts "Would you like to add a new item to your list? y/n"
answer = gets.chomp
  if answer == "y"
  add_item(shopping_list)
  else puts "Great! No items will be added."
  end
puts "Would you like to remove an item from your list? y/n"
answer = gets.chomp
  if answer == "y"
  remove_item(shopping_list)
  else puts "Great! No items will be removed."
  end
puts "Would you like to update the quantity of any of your items? y/n"
answer = gets.chomp
  if answer == "y"
  update_item_quantity(shopping_list) 
  else puts "Great! No quantities will be updated"
  end
print_list (shopping_list)

# Release 5: Reflect
# What did you learn about pseudocode from working on this challenge?
#I learned how to use normal English language words and not to put built in methods names in it. 
#I now know that even a person who doesn't know the programming language should be able to understand what I am trying to do from reading my pseudocode.

# What are the tradeoffs of using arrays and hashes for this challenge?
# In the beginning we had a string that we converted into the array, and then into the hash since hash suited our program more.
# We used mostly hashes. And manipulated with a hash to create an array of the hash keys.

# What does a method return?
# The value of the last line, statement in the method.

# What kind of things can you pass into methods as arguments?
# You pass the argument so it is matching the parameter of the method. It can be anything from a specific data type represented by a variable to the exact string, number.

# How can you pass information between methods?
# By using the return value of the previous method and giving it to a variable. Then use this variable as an argument for the next method.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# Pseudocoding is now more clear and the structure of the code (the way it should look like). 
# I am not sure if I got the past about methods passing the information between them completely right though.