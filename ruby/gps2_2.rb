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
  # print the list to the console [Use print the list method]
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

list_given_by_user = "carrots apples cereal pizza"

def create_list(list_given_by_user)
  shopping_list = {}
  quantity = 1
  list_of_items = list_given_by_user.split(" ")
  list_of_items.each do |item|
    shopping_list[item] = "qty:#{quantity}"
  end
  p shopping_list
end

p shopping_list = create_list(list_given_by_user)

def add_item(shopping_list)
  loop do
    puts "What item would you like to add to the list?"
    add_item = gets.chomp
    break if add_item == "done"
    puts "How many?"
    user_quantity = gets.chomp
    shopping_list[add_item] = "qty: #{user_quantity}"
  end
  p shopping_list
end

p add_item(shopping_list)

def remove_item(shopping_list)
  loop do 
 puts "Here are the items in your list: #{shopping_list.keys}"
 puts "Which items would you like to remove?"
 item_remove = gets.chomp
 break if item_remove == "done"
 shopping_list.delete(item_remove)
 end
 p shopping_list
end

p remove_item(shopping_list)

def update_item_quantity(shopping_list)
 loop do
 puts "Which item would you like to update the quantity of?"
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
 p shopping_list
end

p update_item_quantity(shopping_list)