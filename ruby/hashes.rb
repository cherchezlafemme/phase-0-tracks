#Collect the data about the client and convert each data to the desired type

puts "What is client's name?"
name = gets.chomp
name.to_str

puts "What is client's age?"
age = gets.chomp
age.to_i

puts "How many kids does the client have?"
number_of_kids = gets.chomp
number_of_kids.to_i

puts "What theme would client like for his/her place?"
decor_theme = gets.chomp
decor_theme.to_str

puts "What is client's favorite color?"
fav_color = gets.chomp
fav_color.to_str

puts "Does client have any pets? (yes/no)"
pet_owner = gets.chomp

#Convert the data to boolean and put a condition if the data was entered in a wrong way

if pet_owner.downcase == "yes"
  pet_owner = true
elsif pet_owner.downcase == "no"
  pet_owner = false
else puts "Didn't get this one. Can you tell us again, if client has any pets? Please, write yes or no"
end

puts "Has the client specified any special requirements?"
requirements = gets.chomp
requirements.to_str

  
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

#Print the hash
puts client_profile