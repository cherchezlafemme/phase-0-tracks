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

            puts "Please, write your new updated information now."
            new_value = gets.chomp

          #Replace old entry with the new, client_profile{new_categor, new_value}
          client_profile[new_category] = new_value
            
          elsif update_status.downcase == "none"
            puts "Awesome! Your client profile is done!"
          else puts "I guess, you are all done."
          end

#Print the latest version of the hash
p client_profile

#Show the information about the client on the screen
puts "This is your client profile:
Name: #{client_profile[:name]}
Age: #{client_profile[:age]} 
Number of kids: #{client_profile[:number_of_kids]}
Decor theme: #{client_profile[:decor_theme]} 
Favorite color: #{client_profile[:fav_color]} 
The client has pet: #{client_profile[:pet_owner]} 
Any special requirements: #{client_profile[:special_requirements]}"

#Exit the program
puts "The end"