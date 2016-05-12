#Collect the data about the client and convert each data to the desired type

puts "What is client's name?"
name = gets.chomp

puts "What is client's age?"
age = gets.chomp
age.to_i

puts "How many kids does the client have?"
number_of_kids = gets.chomp
number_of_kids.to_i

puts "What theme would client like for his/her place?"
decor_theme = gets.chomp

puts "What is client's favorite color?"
fav_color = gets.chomp

begin puts "Does client have any pets? (yes/no)"
pet_owner = gets.chomp
  #Convert the data to boolean and put a condition if the data was entered in a wrong way
  if pet_owner.downcase == "yes"
    pet_owner = true
  elsif pet_owner.downcase == "no"
    pet_owner = false
  else  puts "Didn't get this one. Can you tell us again, if client has any pets? Please, write yes or no"
end 
end until pet_owner == true || pet_owner == false

puts "Has the client specified any special requirements?"
requirements = gets.chomp
  
#Feed the data to the hash
client_profile = {
  name: name, 
  #string
  age: age, 
  #integer
  number_of_kids: number_of_kids, 
  #integer
  decor_theme: decor_theme, 
  #string
  fav_color: fav_color, 
  #string
  pet_owner: pet_owner, 
  #boolean
  special_requirements: requirements, 
  #string
}

puts "Do you want to add any updates about client? some/none"
update_status = gets.chomp

#Allow designer to update keys' values.
if update_status.downcase == "some"
  puts "Please, enter the name of category the you want to update. (If you need help, enter see the list)"
  category = gets.chomp
        #Offer help: list of the categories designer can update.
        if category.downcase == "see the list" || category.downcase == "the list" || category.downcase == "list"
          puts "Here is the list: name, age, number_of_kids, decor_theme, fav_color, pet_owner, special_requirements"
          puts "Please, enter the name of category the you want to update."
          new_category = gets.chomp.to_sym
          else new_category = category.to_sym
          end

  p new_category

    #compare the entry with existing symbol classes
   
    #Update the value in this 
    #But if the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) 
    #You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.



elsif update_status.downcase == "none"
  puts "Awesome! Your client profile is done!"
else puts "I guess, you are all done."
end


#Update the hash if changes has been made

#Print the latest version of the hash
puts client_profile

#Exit the program
puts "The end"